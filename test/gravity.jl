
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

Graviton=GaugeVectorField{:Graviton}
Base.adjoint(::Type{Graviton})=Graviton
Phi1 =  ScalarField{:Phi1}
Phi1c = adjoint(Phi1)
Phi2 = ScalarField{:Phi2}
Phi2c=  adjoint(Phi2)

Fields.charge(::Type{Phi1})=:qch1
Fields.charge(::Type{Phi2})=:qch2
Fields.mass(::Type{Phi1})=:m1
Fields.mass(::Type{Phi2})=:m2
Fields.color(::Type{Graviton})="grey"
Fields.color(::Type{Phi1})="blue"
Fields.color(::Type{Phi2})="red"
Fields.color(::Type{Phi1c})="deepskyblue"
Fields.color(::Type{Phi2c})="lightcoral"


diags=include("QGRAFjl/2lGR.jl")
qDiags=[qDiagram(;diag...) for diag in diags]


#=
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
=#

import Catlab.Theories: ⊕
function ⊕(a, b...)
  return ⊕(a, ⊕(b...))
end

using Catlab.Graphs


alldiags=(⊕(((x -> x.g).(qDiags))...))

to_graphviz(alldiags)
(x -> x.g).(qDiags)
to_graphviz(kruskal(alldiags,mass;rev=true))
