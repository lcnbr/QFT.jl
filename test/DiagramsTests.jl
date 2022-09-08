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
applyRules(qd.g)
toform(qd)
using QFT 
QFT.FieldGraphs.ne(qd.g)

nickel_index(call_nauty(qd.g).cset)
diags=include("QGRAFjl/1lSQED.jl")



qDiags=[qDiagram(;diag...) for diag in diags]
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
    println(io,toform(qd))
  end
end;


toform.(qDiags)
i=13
qDiags[i].nloops
call_nauty(qDiags[i].g).cset
(applyRules(qDiags[i].g;MIME="text/FORM"))
qDiags[i].nickel_index
dict=momentum_equations_solved( qDiags[i].g)



SymbolicUtils.Sym{Real, Base.ImmutableDict{DataType, Any}} <: SymbolicUtils.Sym{T} where T
using Symbolics: tosymbol
SymbolicUtils.Add<:SymbolicUtils.Symbolic
dict
show(stdout, MIME("text/FORM"), dict)






using StatsBase

import Catlab.Graphics.Graphviz: Graph,run_graphviz

function Base.show(io::IO, ::MIME"image/svg+xml", graph::Graph)
  run_graphviz(io, graph, format="svg")
end

import Catlab.Theories: ⊕
function ⊕(a, b...)
  return ⊕(a, ⊕(b...))
end

unique!(d -> d.nickel_index, qDiags)
qDiags
(d -> d.nickel_index).(qDiags)
#(sample(qDiags,    253 , replace=false))...
alldiags=(⊕(((x -> x.g).(qDiags))...))
to_graphviz(alldiags,)
(x -> x.g).(qDiags)





end