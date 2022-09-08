module NickelIndex
using TypedTables

  export AbstractNickel,MetaNickel,SimpleNickel,EdgeMetaNickel,VertexMetaNickel,vedges,edges,ranges,vertexneighbors,root,edgemeta,vertexmeta


  abstract type AbstractNickel end
  struct SimpleNickel <: AbstractNickel
    ranges::AbstractVector{UnitRange{Int}}
    seps::AbstractVector{Int}
    edges::AbstractVector{Int}
  end
  
  abstract type AbstractMetaNickel <: AbstractNickel  end
  
  

  struct MetaNickel{S<:Union{NamedTuple,Nothing},T<:Union{NamedTuple,Nothing}}<: AbstractMetaNickel 

    root::SimpleNickel
    edgemeta::Union{Table,Nothing}
    vertexmeta::Union{Table,Nothing}
  
    function MetaNickel{S,T}(root::AbstractNickel, edgemeta::Table{S, N1, Data1}, vertexmeta::Table{T, N2, Data2}) where {S  <:  NamedTuple,  T  <:  NamedTuple,N1,Data1,N2,Data2}
      @assert length(edgemeta) == ne(root) "edgemeta must be of length ne(root) or empty"
      @assert length(vertexmeta) == nv(root)
      new(root, edgemeta, vertexmeta)
    end

    function MetaNickel{S,Nothing}(root::AbstractNickel, edgemeta::Table{S, N, Data}, vertexmeta::Nothing) where {S  <:  NamedTuple,N,Data}
      @assert length(edgemeta) == ne(root) "edgemeta must be of length ne(root) or empty"
      
      new(root, edgemeta, vertexmeta)
    end

    function MetaNickel{Nothing,T}(root::AbstractNickel, edgemeta::Nothing, vertexmeta::Table{T, N, Data}) where {  T  <:  NamedTuple,N,Data}

      @assert length(vertexmeta) == nv(root)
      new(root, edgemeta, vertexmeta)
    end 

    
  end
  


  function MetaNickel(root::AbstractNickel, edgemeta::Table{S, N1, Data1}, vertexmeta::Table{T, N2, Data2}) where {S  <:  NamedTuple,  T  <:  NamedTuple,N1,Data1,N2,Data2}
    MetaNickel{S,T}(root, edgemeta, vertexmeta)
  end


  function MetaNickel(root::AbstractNickel, edgemeta::Table{S, N1, Data1}, vertexmeta::Nothing) where {S  <:  NamedTuple, N1,Data1}
    MetaNickel{S,Nothing}(root, edgemeta, vertexmeta)
  end

  function MetaNickel(root::AbstractNickel, edgemeta::Nothing, vertexmeta::Table{T, N2, Data2}) where { T  <:  NamedTuple,N2,Data2}
    MetaNickel{Nothing,T}(root, edgemeta, vertexmeta)
  end

  
function MetaNickel(n::String,etypes,vtypes)
    strv = filter(x->x!="",split(n,("V=")))#|>x->map(x->split(x," "),x)


    vmeta= length(strv) == 2 ? meta(String(strv[2]),vtypes) :  nothing 
  
    strv = filter(x->x!="",split(strv[1],("E=")))

    emeta= length(strv) == 2 ? meta(String(strv[2]),etypes) :  nothing


    root = SimpleNickel(String(strv[1]))

    MetaNickel(root,emeta,vmeta)
  end
  function meta(s::String,types::NamedTuple)
    emeta=filter(x->x!="",split(s,(':')))
    @assert length(emeta) == length(types)
    data=[ filter(x->x!="",split(em,('|',',','.',' '))) for em in emeta]
    V=[]

    for (i, type) in enumerate(types)

      if type <: Number
        push!(V,Vector{type}(parse.(Ref(type),data[i])))
      else
        push!(V,Vector{type}(type.(data[i])))
      end

    end
  
    Table(NamedTuple{keys(types)}(V))
  end


  function meta(s::String,types::Tuple)
    emeta=map(x->String(strip(x)),filter(x->x!="",split(s,(':',' '))))
    names=[Symbol(name) for (name,n) in Iterators.partition(emeta, 2)]
    emeta=[s for (_,s) in Iterators.partition(emeta, 2)]

    @assert length(emeta) == length(types)
    data=[ filter(x->x!="",split(em,('|',',','.',' '))) for em in emeta]
    V=[]
    for (i, type) in enumerate(types)

      if type <: Number
        push!(V,Vector{type}(parse.(Ref(type),data[i])))
        
      else
        push!(V,Vector{type}(type.(data[i])))
      end

    end
  
    Table((;zip(names, V)...))
  end

  EdgeMetaNickel{S} = MetaNickel{S,Nothing}
  VertexMetaNickel{T} = MetaNickel{Nothing,T}

  function EdgeMetaNickel(root::AbstractNickel, edgemeta::Table{S, N1, Data1}) where {S  <:  NamedTuple, N1,Data1}
    EdgeMetaNickel{S}(root, edgemeta, nothing)
  end


  function VertexMetaNickel(root::AbstractNickel, vertexmeta::Table{S, N1, Data1}) where {S  <:  NamedTuple, N1,Data1}
    VertexMetaNickel{S}(root, nothing, vertexmeta)
  end

  edgemeta(n::MetaNickel) = n.edgemeta
  vertexmeta(n::MetaNickel) = n.vertexmeta
  

  
  vedges(n::SimpleNickel) = n.edges
  ranges(n::SimpleNickel) = n.ranges
  root(n::MetaNickel) = n.root
  vedges(n::MetaNickel) = vedges(root(n))
  ranges(n::MetaNickel) = ranges(root(n))
  ne(n::AbstractNickel) = length(vedges(n))
  nv(n::AbstractNickel) = length(ranges(n))
  root(n::SimpleNickel) = n


  function vertexneighbors(n::AbstractNickel)
      [vedges(n)[range] for range in ranges(n)]
  end

  function vertexneighbors(n::AbstractNickel,vertex::Int)
      vedges(n)[ranges(n)[vertex]]
  end

function edges(n::AbstractNickel)
  edges(vedges(n),ranges(n))
end

function shift(r::UnitRange,shift)
  r=(first(r)+shift):(last(r)+shift)
end

function edges(e,ranges)
    isempty(e)&&return []

    vertex = findfirst(x->first(x)<=1&&last(x)>0,ranges)
    ranges =shift.(ranges,Ref(-1))
    vcat([(first(e),vertex)],edges(e[2:end],ranges)) 
end



function Base.show(io::IO, ::MIME"text/plain", n::SimpleNickel)
  edgelist = vedges(n)
  stringEdgelist = [e>0 ? string(e) : (e>-3 ? string(extd[e]) : "x") for e in edgelist]
  print(io,repeat("|",n.seps[1]))
  for (i,range) in enumerate(ranges(n))
    
    print(io,join(stringEdgelist[range],"."))
    
    print(io,repeat("|",n.seps[i+1]))
  end
end


function Base.show(io::IO, m::MIME"text/plain", n::MetaNickel)
  show(io,m,root(n))
  if !isnothing(edgemeta(n))

    _showedgemeta(io,n)
  end
  if !isnothing(vertexmeta(n))

    _showvertexmeta(io,n)
  end

end



function _showedgemeta(io,n::MetaNickel{S,T}) where { S<:NamedTuple,T<:Union{<:NamedTuple,Nothing}}
  meta = edgemeta(n)
  print(io," E=")
  for (name, c) in pairs(columns(meta))
    print(io," $name:|")
    for range in ranges(n)
      print(io,join(c[range],"."))
      print(io,"|")
    end
  end
end

function _showvertexmeta(io,n::MetaNickel{S,T}) where { S<:Union{<:NamedTuple,Nothing},T<:NamedTuple}
  meta = vertexmeta(n)
  print(io," V=")  
  for (name, c) in pairs(columns(meta))
    print(io," $name:|")
    for s in c
      print(io,string(s))
      print(io,"|")
    end
  end
end
using Bijections
const extd= Bijection(Dict(0  => 'e',-1 => 'i',-2 => 'o'))    

function SimpleNickel(n::String)
  seps =  [length(e.match) for e in eachmatch(r"([\|]+)",n)]
  strv = filter(x->x!="",map(x->strip(x),split(n,'|')))#|>x->map(x->split(x," "),x)
  ranges = Vector{UnitRange{Int}}(undef,length(strv))
  tot=1
  for (i,str) in enumerate(strv)
    add=count(i->(i==' '||i=='.'),str)
    ranges[i]=tot:(add+tot)
    tot+=add+1
  end
  ev=map(labeltoint ,filter(x->x!="",split(n,('|',' ','.'))))
  SimpleNickel(ranges,seps,ev)
end

function labeltoint(s)
  if occursin(r"[eio]",s)
    extd(only(s))
  elseif occursin(r"[\d]+",s)
    parse(Int,s)
  else
    -10
  end 
end



 

end