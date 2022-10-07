module MomentumGraphs
using Reexport

export SchMomentumGraph,AbstractMomentumGraph,MomentumGraph,momentum,momentum_equation,momentum_equations,indep!,dep!,dangling_momentum_equation,momentum_equations_solved,indep,momentum

@reexport import DirectedHalfEdgeGraphs: add_half_edge_pairs!, add_half_edge_pair!, add_dangling_edge!, add_dangling_edges!,add_half_edges!,to_graphviz,to_graphviz_property_graph,sort

@reexport using DirectedHalfEdgeGraphs

using ...Form
import Symbolics: variables,value,solve_for
using Catlab
using Catlab.CategoricalAlgebra,Catlab.Graphics,Catlab.Graphs

@present SchMomentumGraph <: SchDirectedHalfEdgeGraph begin
  Vec::AttrType
  momentum::Attr(H, Vec)
  indep::Attr(H, Truth)
  compose(inv,momentum)==momentum
end

@abstract_acset_type AbstractMomentumGraph <: AbstractDirectedHalfEdgeGraph


@acset_type MomentumGraphGeneric(SchMomentumGraph, index=[:inv, :vertex, :sink,:momentum,:indep]) <: AbstractMomentumGraph

MomentumGraph=MomentumGraphGeneric{Bool,FVector}


#******************************************************************************
# Accessors


momentum(g::AbstractMomentumGraph, args...) = subpart(g, args..., :momentum)
indep(g::AbstractMomentumGraph, args...) = subpart(g, args..., :indep)

function momentum_equation(g::AbstractMomentumGraph,vertex)
  ins=(p->p.symbol).((p->p.symbol).(momentum.(Ref(g),in_edges(g,vertex))))
  outs=(p->p.symbol).((p->p.symbol).(momentum.(Ref(g),out_edges(g,vertex))))

  length(ins)>0 ? ins=sum(ins) : ins=0
  length(outs)>0 ? outs=sum(outs) : outs=0
  ins~outs
end

function dangling_momentum_equation(g::AbstractMomentumGraph)
  ins=(p->p.symbol).((p->p.symbol).(momentum.(Ref(g),dangling_edges(g,dir=:in))))
  outs=(p->p.symbol).((p->p.symbol).(momentum.(Ref(g),dangling_edges(g,dir=:out))))
  length(ins)>0 ? ins=sum(ins) : ins=0
  length(outs)>0 ? outs=sum(outs) : outs=0
  ins~outs
end

function momentum_equations(g::AbstractMomentumGraph)
  eqs=[momentum_equation(g,v) for v in vertices(g)]
  useless=[isequal(eq.lhs,eq.rhs) for eq ∈ eqs ]
  eqs[.!useless]
end

function momentum_equations_solved(g::AbstractMomentumGraph;kw...)
  set_independent_loops!(g;kw...)
  allindep=indep(g)
  depMom =(p->p.symbol).((p->p.symbol).(unique(momentum(g)[.!allindep])))
  eqs=momentum_equations(g)
  n=length(eqs)
  m=length(depMom)
  extMom=(p->p.symbol).((p->p.symbol).((momentum.(Ref(g),dangling_edges(g,dir =:in)))))[1:(n-m)]
  Dict([depMom;extMom].=>solve_for(eqs,[depMom;extMom]))
end

#*****************************************************************************
# Edit graph

subscript(i) = join(Char(0x2080 + d) for d in reverse!(digits(i)))
addSub(p,i)=Symbol(p,subscript(i))

function add_half_edge_pairs!(g::AbstractMomentumGraph, srcs::AbstractVector{Int}, tgts::AbstractVector{Int};
  indeps=falses(length(srcs)),kw...)

  @assert (n = length(srcs)) == length(tgts)
  
  neIn=length(first(half_edge_pairs(g)))
  r=(neIn+1):neIn+n

  momenta=FVector.(addSub.(Ref(:p), r),r)


  outs = add_parts!(g, :H, n; vertex=srcs, kw...)
  ins = add_parts!(g, :H, n; vertex=tgts, kw...)
  set_subpart!(g, outs, :inv, ins)
  set_subpart!(g, outs, :sink, falses(n))
  set_subpart!(g, ins, :inv, outs)
  set_subpart!(g, ins, :sink, trues(n))
  set_subpart!(g, outs, :momentum,momenta)
  set_subpart!(g, ins, :momentum,momenta)
  set_subpart!(g, outs, :indep, indeps)
  set_subpart!(g, ins, :indep,indeps)
  first(outs):last(ins)
end

function add_dangling_edge!(g::AbstractMomentumGraph, v::Int; dir=true,n=length(dangling_edges(g))+1,momentum=FVector(addSub(:p,n),n),indep=true, kw...)
  
  H=add_part!(g, :H; vertex=v, inv=nparts(g,:H)+1,sink=dir,momentum=momentum,indep=indep,kw...)
end

function add_dangling_edges!(g::AbstractMomentumGraph, vs::AbstractVector{Int}; dirs::AbstractVector{Bool}=trues(length(vs)),r=(length(dangling_edges(g))+1):(length(dangling_edges(g))+length(vs)),momenta=FVector.(addSub.(Ref(:p), r),r),indeps=trues(length(vs)),kw...)
  neIn=length(dangling_edges(g))
  n, k = length(vs), nparts(g, :H)
  H=add_parts!(g, :H, n; vertex=vs, inv=(k+1):(k+n),sink=dirs, momentum=momenta,indep=indeps,kw...)
end

indep!(g::AbstractMomentumGraph,args... ) = set_subpart!(g, args..., :indep,true)

dep!(g::AbstractMomentumGraph,args... ) = set_subpart!(g, args..., :indep,false)


function set_independent_loops!(g::AbstractMomentumGraph;weightfunction::Function=(g,x)->1,kw...)
  spanningTree=kruskal(g,weightfunction;kw...)
  set_independent_loops!(g,spanningTree)
end

function set_independent_loops!(g::AbstractMomentumGraph,spanningTree)
  sg=Subobject(g,H=half_edges(g),V=vertices(g))
  f=hom(sg\spanningTree)
  for h in half_edges(g)
    if h in f[:H].(half_edges(dom(f)))
      indep!(g,h)
    else
      dep!(g,h)
    end 
  end
end

function add_half_edges!(g::AbstractMomentumGraph, inv::Vector{Int},vertex::Vector{Int},sink::AbstractVector{Bool}=falses(length(inv));strict=false,kw...)

  niIn=length(first(half_edge_pairs(g)))
  niExt=length(dangling_edges(g))
  he=_add_half_edges!(g, inv, vertex, sink; strict, kw...)
  nfIn =length(first(half_edge_pairs(g)))
  nfExt=length(dangling_edges(g))

  rInt=(niIn+1):nfIn
  rExt=(niExt+1):nfExt


  innermomenta=FVector.(addSub.(Ref(:q), rInt),rInt)
  inh=vcat((half_edge_pairs(g)[rInt])...)
  
  set_subpart!(g, inh, :momentum,repeat(innermomenta, inner=2))


  outermomenta=FVector.(addSub.(Ref(:p), rExt),rExt)
  exth=dangling_edges(g)[rExt]
  set_subpart!(g, exth, :momentum,outermomenta)
  he
end



end
  









