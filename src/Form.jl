module Form
using SymbolicUtils
using Symbolics
import SymbolicUtils: to_symbolic
import Symbolics: variable, value, getname, tosymbol
import Base: +, -, *
import Latexify: unicode2latex
using REPL

export FIndex, FSymbol, FVector, unicode2ascii

function unicode2ascii(s::String)
  replace(unicode2latex(s), r"[_\\{}]*|[^[:ascii:]]*" => "")
end
unicode2ascii(s) = unicode2ascii(string(s))


struct FSymbol
  symbol::SymbolicUtils.Sym
end

unicode2ascii(s::FSymbol) = unicode2ascii(tosymbol(s.symbol))

function ⋅(a, b) end
@register ⋅(a, b)

SymbolicUtils.to_symbolic(s::FSymbol) = s.symbol

⋅(a::FSymbol, b::FSymbol) = FSymbol(a.symbol ⋅ b.symbol)
+(a::FSymbol, b::FSymbol) = FSymbol(a.symbol + b.symbol)
*(a::FSymbol, b::FSymbol) = FSymbol(a.symbol * b.symbol)

FSymbol(s::Symbol) = FSymbol(value(variable(s)))

Base.show(io::IO, s::FSymbol) = print(io, s.symbol)
Base.show(io::IO, ::MIME"text/plain", s::FSymbol) =
  print(io, "FORM Symbol: ", s)
Base.show(io::IO, ::MIME"text/FORM", s::FSymbol) =
  print(io, unicode2ascii(s))

using Symbolics: _toexpr
function Base.show(io::IO, ::MIME"text/FORM", d::Dict{<:SymbolicUtils.Symbolic,<:SymbolicUtils.Symbolic})
  for (k, v) in d
    println(io, "Id $(repr("text/FORM",_toexpr(k))) = $(repr("text/FORM",_toexpr(v)));")
  end
end

struct FIndex
  dimension::Union{Int,FSymbol}
  ID::Symbol
  generated::Bool
  function FIndex(dimension::Union{Int,FSymbol}, ID::Symbol)
    new(dimension, ID, is_gensym(ID))
  end
end
unicode2ascii(s::FIndex) = unicode2ascii(s.ID)

function FIndex(ID::Symbol=gensym(:dummy); dimension=4)
  FIndex(dimension, ID)
end

function FIndex(greek::String, num::Int; dimension=4)
  ID = Symbol(REPL.REPLCompletions.latex_symbols["\\$greek"] * subscript(num))
  FIndex(dimension, ID)
end

function Base.show(io::IO, i::FIndex)
  if (i.generated)
    print(io, "μ", subscript(gensym_to_num(i.ID)))
  else
    print(io, string(i.ID))
  end
end

Base.show(io::IO, ::MIME"text/plain", i::FIndex) =
  print(io, "FORM Index: ", i, "with dimension ", i.dimension)
Base.show(io::IO, ::MIME"text/FORM", i::FIndex) =
  print(io, unicode2ascii(i.ID))


mutable struct FVector
  symbol::FSymbol
  index::FIndex
  FVector(symbol::FSymbol, index::FIndex) = new(symbol, index)
end


⋅(a::FVector, b::FVector) = FVector(a.symbol ⋅ b.symbol, a.index)
+(a::FVector, b::FVector) = FVector(a.symbol + b.symbol)

function *(a::FVector, b::FVector)
  if a.index.ID == b.index.ID
    ⋅(a, b)
  else
    FVector(a.symbol * b.symbol, a.index)#This is clearly very wrong! 
  end
  FVector(FSymbol(symbol), FIndex(dimension=dimension))
end

FVector(symbol; dimension=4) = FVector(FSymbol(symbol), FIndex(dimension=dimension))
FVector(symbol::Symbol, IndexID::Int; dimension=4) = FVector(FSymbol(symbol), FIndex("mu", IndexID; dimension=dimension))
FVector(symbol::Symbol, IndexID::Int, indexname::String; dimension=4) = FVector(FSymbol(symbol), FIndex(indexname, IndexID; dimension=dimension))


function (v::FVector)(i::FIndex)
  v.index = i
  v
end


Base.show(io::IO, ::MIME"text/FORM", s::Symbol) =
  print(io, unicode2ascii(s))
Base.show(io::IO, ::MIME"text/FORM", s::Expr) =
  print(io, unicode2ascii(s))
Base.show(io::IO, v::FVector) = print(io, "$(v.symbol)($(v.index))",)
Base.show(io::IO, ::MIME"text/plain", v::FVector) =
  print(io, "FORM Vector: ", v)
Base.show(io::IO, ::MIME"text/FORM", v::FVector) =
  print(io, "$(unicode2ascii(v.symbol))($(unicode2ascii(v.index)))")



function Base.show(io::IO, ::MIME"text/FORM", z::Complex)
  r, i = reim(z)
  compact = get(io, :compact, false)
  show(io, r)
  if signbit(i) && !isnan(i)
    print(io, compact ? "-" : " - ")
    if isa(i, Signed) && !isa(i, BigInt) && i == typemin(typeof(i))
      show(io, -widen(i))
    else
      show(io, -i)
    end
  else
    print(io, compact ? "+" : " + ")
    show(io, i)
  end
  if !(isa(i, Integer) && !isa(i, Bool) || isa(i, AbstractFloat) && isfinite(i))
    print(io, "*")
  end
  print(io, "i_")
end
Base.show(io::IO, ::MIME"text/FORM", z::Complex{Bool}) =
  print(io, z == im ? "i_" : "$(z.re)+$(z.im)*i_")


Base.show(io::IO, ::MIME"text/FORM", z::Complex) = print(io, " $(real(z))* exp(", z.Θ, "im)")
#= mutable struct FTensor 
  symbol::FSymbol
  indices::Vector{FIndex}
end

Base.show(io::IO, z::Polar) = print(io, z.r, " * exp(", z.Θ, "im)")

⋅(a::FTensor , b::FTensor ) = FTensor(a.symbol ⋅ b.symbol,a.index)
+(a::FTensor  , b::FTensor ) = FTensor(a.symbol + b.symbol)

function *(a::FTensor  , b::FTensor) 
  if a.index.ID == b.index.ID
    ⋅(a, b)
  else
    FTensor(a.symbol ⋅ b.symbol, a.index)
  end
  FTensor(FSymbol(symbol),FIndex(dimension=dimension))
end
FTensor(a.symbol * b.symbol)

FTensor(symbol;dimension=4)=FTensor(FSymbol(symbol),FIndex(dimension=dimension))

FTensor()=FTensor(:p)

function (v::FTensor)(i::FIndex)
  v.index=i
  v
end =#


function gennum(a)
  gensym_to_num(gensym(a))
end

function gensym_to_num(symbol)
  @assert is_gensym(symbol) "Symbol has not been generated"
  parse(Int, match(r".*#\K\d*", string(symbol)).match) - 291
end

function is_gensym(symbol::SymbolicUtils.Sym)
  is_gensym(getname(symbol))
end

function is_gensym(symbol::Symbol)
  occursin(r"^##", string(symbol))
end

subscript(i) = join(Char(0x2080 + d) for d in reverse!(digits(i)))


#=


"""
    AFExpr
Abstract type representing any form expression
"""
abstract type AFExpr end

abstract type AFTree <: AFExpr end
abstract type AFLeaf <: AFExpr end

"""
    AFTerm <: AFExpr
Abstract type representing terms in form expressions
"""
abstract type AFTerm <: AFTree end

"""
    AFSymbol{T<:Number} <: AFExpr
Abstract type representing form symbols, living in ℝ, with a power 
"""
abstract type AFSymbol <: AFTree end
abstract type AFBareSymbol <: AFLeaf  end

@doc raw"""
- symmetric :	$F(x_1,x_2,\ldots,x_n) = F(x_{\sigma(1)},x_{\sigma(2)},\ldots,x_{\sigma(n)})$ for every permutation $\sigma$.
- antisymmetric :	$F(x_1,x_2,\ldots,x_n) = {\rm sgn}(\sigma)\,F(x_{\sigma(1)},x_{\sigma(2)},\ldots,x_{\sigma(n)})$ for every permutation $\sigma$, where ${\rm sgn}(\sigma)$ denotes the signature of $\sigma$.
- cyclic :	$F(x_1,x_2,\ldots,x_n) = F(x_{\sigma(1)},x_{\sigma(2)},\ldots,x_{\sigma(n)})$ for every permutation $\sigma$ in the group generated by the cycle $(1\;2\;3\;\ldots\;n)$.
- rcyclic :	$F(x_1,x_2,\ldots,x_n) = F(x_{\sigma(1)},x_{\sigma(2)},\ldots,x_{\sigma(n)})$ for every permutation $\sigma$ in the group generated by the cycle $(1\;2\;3\;\ldots\;n)$ and the cycle $(1\;\;n)\,(2\;\;n-1)\,(3\;\;n-2)\,\cdots\,(\lfloor \frac{n}{2}\rfloor\;\;\lfloor \frac{n}{2}\rfloor+1)$.
"""
abstract type FunctonSymmetries end
struct None<: FunctonSymmetries end
struct Symmetric<: FunctonSymmetries end
struct Antisymmetric<: FunctonSymmetries end
struct Cyclic<: FunctonSymmetries end
struct RCyclic<: FunctonSymmetries end

"""
    AFFunction{T<:FunctonSymmetries} <: AFExpr

"""
abstract type AFFunction{T<:FunctonSymmetries} <: AFLeaf end

abstract type ACFFunction{T} <: AFFunction{T} end

abstract type AFVector <: AFLeaf end

abstract type AFIndex <: AFLeaf end

abstract type AFTensor{T} <: ACFFunction{T} end

abstract type AFSum <: AFTree end


## Interface for SymbolicUtils

"""
exprhead(x)

If x is a term as defined by istree(x), exprhead(x) must return a symbol, corresponding to the head of the Expr most similar to the term x. If x represents a function call, for example, the exprhead is :call. If x represents an indexing operation, such as arr[i], then exprhead is :ref. Note that exprhead is different from operation and both functions should be defined correctly in order to let other packages provide code generation and pattern matching features.
"""

TermInterface.exprhead(::AFExpr) = :call

TermInterface.istree(::AFTree) = true
TermInterface.istree(::AFLeaf) = false
TermInterface.istree(::Type{T}) where {T<:AFExpr} = false
TermInterface.istree(::Type{T}) where {T<:AFTree} = true

# Symbolic type promotion
SymbolicUtils.promote_symtype(f, Ts::Type{<:AFExpr}...) = promote_type(Ts...)
SymbolicUtils.promote_symtype(f, T::Type{<:AFExpr}, Ts...) = T
SymbolicUtils.promote_symtype(f,T::Type{<:AFExpr},S::Type{<:Number}) = T
SymbolicUtils.promote_symtype(f,T::Type{<:Number},S::Type{<:AFExpr}) = S
SymbolicUtils.promote_symtype(f,T::Type{<:AFExpr},S::Type{<:AFExpr}) = promote_type(T,S)




=#
end