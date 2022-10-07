module TestDiagramsGraphs
import Term: install_term_stacktrace

install_term_stacktrace()  # entering the danger zone


using QFT.Diagrams
using Test
using Catlab.CategoricalAlgebra
using Symbolics
using Catlab
using Catlab.Theories, Catlab.CategoricalAlgebra

import Symbolics: variables, value
using Catlab.Graphs

using CSetAutomorphisms
using QFT.FieldGraphs
using QFT.Fields
include("SQED.jl")
diag1=(
  H           = [-2,1,3,-1,-4,2,4,-3],
  Hdual       = [0,2,4,0,0,1,3,0],
  vertex      = [1,1,1,1,2,2,2,2],
  field       = [Phi1c,Photon,Photon,Phi1,Phi2c,Photon,Photon,Phi2],
  ID          = 1,
  pre_factor  = (+1)*1//2,
  nprops      = 2,
  nloops      = 1,
  nin         = 2,
  nout        = 2
  )

qd =qDiagram(;diag1...)
qd.g
to_graphviz(qd.g)
using QFT.NickelIndex: root
root(qd.nickel_index)
applyRules(qd.g,MIME"text/FORM"())
toform(qd)
using QFT 
QFT.FieldGraphs.ne(qd.g)

nickel_index(call_nauty(qd.g).cset)
diags=include("QGRAFjl/1lSQED.jl")


qDiags=[qDiagram(;diag...) for diag in diags]

qDiags[1].g

i=    5

to_graphviz(qDiags[i].g,node_labels=true)
cycle_basis(qDiags[i].g)

gr=qDiags[i].g

function half_edge_cycles(g::AbstractDirectedHalfEdgeGraph)
seen =[]
cycles=[]
for c in cycle_basis(g)
  lc=length(c)

  
    append!(c,c[1])
  
  cycle=[]

  w=c[1]  
  @show c
  for v in c[2:end]
    @show v w
    pairs=collect(zip(half_edge_pairs(g,w,v)...))
    @show pairs
    hs = first(setdiff(pairs,seen))
    push!(seen,hs)
    push!(cycle,hs...)
    w=v
  end
  push!(cycles,cycle)
end
return cycles
end

function scaleless(g::AbstractFieldGraph)
  cycles =cycle_basis(g)
  isscaleless=false
  for c in cycles
    hs= collect(Iterators.flatten(half_edges.(Ref(g),c)))
    fields=unique!(typeof.(field.(Ref(g),hs)))
    @show  fields
    if Bool(Phi1 in fields) ⊻  Bool(Phi2 in fields)
      isscaleless=true
    end
  end
  return isscaleless
end
grs=(x->  x.g).(qDiags)
to_graphviz.(grs[.!scaleless.(grs)])
collect(zip(half_edge_pairs(grs[5],3,2)...))
g=grs[5]
to_graphviz(grs[i])
srcs=1
tgts=2
out = false ? out_edges(g, srcs) : half_edges(g, srcs)
ins = inv(g, out)
has_tgt = vertex(g, ins) .== tgts
return (out[has_tgt], ins[has_tgt])
end




open("diags.frm";create=true,write=true) do io
  write(io,"""
  Symbol x;
Auto V p;
Auto V p;
Auto V q;
Auto S m;
S e;
Auto S Q;
Auto I nu;
CF prop;
CF inv;
  """)
  for qd in qDiags
    toform(io,qd)
    println(io,"")
  end
end;


toform.(qDiags)

diags=(x -> x.g).(qDiags)
cycle_basis(qDiags[i].g)
to_graphviz(canonical_iso(qDiags[i].g;pres=nothing))
(applyRules(qDiags[i].g,MIME"text/FORM"()))
(applyRules.(diags,Ref(MIME"qcounting"())))


filter(g->applyRules(g,MIME"qcounting"),diags)

toform(stdout,qDiags[i])
qDiags[i].nickel_index
dict=momentum_equations_solved(qdg)



SymbolicUtils.Sym{Real, Base.ImmutableDict{DataType, Any}} <: SymbolicUtils.Sym{T} where T
using Symbolics: tosymbol
SymbolicUtils.Add<:SymbolicUtils.Symbolic
dict
repr( "text/FORM", dict)



spanningTree = subtree( qDiags[i].g, dfs_parents( qDiags[i].g, 4, all_neighbors, by=e -> mass( qDiags[i].g, e)))
to_graphviz(spanningTree, node_labels=true, edge_labels=true)

V=vertices(qDiags[i].g)

collect(zip(half_edge_pairs(qDiags[i].g;by=h->mass(qDiags[i].g,h))...))

mst=kruskal(qDiags[i].g,mass)
dom(hom(mst))

i=13
to_graphviz(kruskal(qDiags[i].g,mass;rev=true))
spanningTree=Subobject(qDiags[i].g, V=V)
so=Subobject(qDiags[i].g, V=[1,4],H=[1,2])
spanningTree = spanningTree ∨ so
half_edge_pairs(qDiags[i].g)
length(connected_components(dom(hom(spanningTree))))
using StatsBase

import Catlab.Graphics.Graphviz: Graph,run_graphviz

function Base.show(io::IO, ::MIME"image/svg+xml", graph::Graph)
  run_graphviz(io, graph, format="svg")
end

import Catlab.Theories: ⊕
function ⊕(a, b...)
  return ⊕(a, ⊕(b...))
end

using Catlab.Graphs

connected_components(alldiags)
unique!(d -> d.nickel_index, qDiags)
qDiags
(d -> d.nickel_index).(qDiags)
#(sample(qDiags,    253 , replace=false))...
alldiags=(⊕(((x -> x.g).(qDiags))...))


diags[11]

s=sink(g,half_edges(g;by=h->mass(g,h),rev=true))
half_edges(g;by=h->mass(g,h),rev=true)[s]
in_edges(g;by=h->mass(g,h),rev=true)
g=⊕(diags[[11,5,2,12]]...)
to_graphviz(kruskal(⊕(diags[[11,5,2,12]]...),mass;rev=true),node_labels=true, edge_labels=true)

to_graphviz(alldiags,)
(x -> x.g).(qDiags)
to_graphviz(kruskal(alldiags,mass;rev=true))
FieldGraphs.half_edges(alldiags,2,2)



end