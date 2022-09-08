module Diagrams

export qDiagram,toform

abstract type AbstractDiagram end

using ...NickelIndex

struct qDiagram{G}
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
  return qDiagram{FieldGraph}(ID,pre_factor,nloops,nprops,nin,nout,g,nickel_index(g#= call_nauty(g).cset =#))
end

function toform(qd::qDiagram)
  "L [d$(qd.ID)l$(qd.nloops)$(repr("text/plain",root(qd.nickel_index)))] = "*applyRules(qd.g)*";"
end

function momentum_equations_solved(qd::qDiagram)
  dict=momentum_equations_solved(qd.g)
  return dict
end

function formMomentumId(qd::qDiagram)
  
  return show(stdout, MIME("text/FORM"), momentum_equations_solved(qd.g))  
end
 # module  



end