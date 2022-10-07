module Diagrams

export qDiagram,toform

abstract type AbstractDiagram end

using ...NickelIndex

mutable struct qDiagram{G}
  ID::Int
  pre_factor::Rational
  nloops::Int
  nprops::Int
  nin::Int
  nout::Int
  g::G
  nickel_index::AbstractNickel
end
using CSetAutomorphisms
using ...FieldGraphs



function qDiagram(;
  H::AbstractVector{Int},

  Hdual::AbstractVector{Int},
  vertex::AbstractVector{Int},
  field::AbstractVector{DataType},
  ID::Int,
  pre_factor::Rational,
  nprops::Int,
  nloops::Int,
  nin::Int,
  nout::Int)
  g=FieldGraph(H,Hdual,vertex,field;strict=true)
  return qDiagram{FieldGraph}(ID,pre_factor,nloops,nprops,nin,nout,g,nickel_index(canonical_iso(g;pres=nothing)#= call_nauty(g).cset =#))
end

function toform(io,qd::qDiagram)
  println(io,"*--#[d$(qd.ID)l$(qd.nloops):")
  println(io,"L [d$(qd.ID)l$(qd.nloops)$(repr("text/plain",root(qd.nickel_index)))] = "*applyRules(qd.g,MIME"text/FORM"())*";")
  println(io,"#procedure momentumRouting")
  println(io,repr( "text/FORM", momentum_equations_solved(qd)))
  println(io,"#endprocedure")
  println(io,"*--#]d$(qd.ID)l$(qd.nloops):")
end
import ...MomentumGraphs: momentum_equations_solved
import ...QFT: mass
function momentum_equations_solved(qd::qDiagram)
  dict=momentum_equations_solved(qd.g,weightfunction=mass,rev=true)
  return dict
end

function formMomentumId(qd::qDiagram)
  
  return show(stdout, MIME("text/FORM"), momentum_equations_solved(qd.g))  
end
 # module  



end