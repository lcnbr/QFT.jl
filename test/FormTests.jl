module test

using Latexify
import Latexify: unicodedict,unicode2latex

using Test

  using QFT.Form

  FIndex()
  FIndex(:μ₁)
  FIndex("μ",1).ID
  m=FIndex("mu",1).ID
  
  unicode2ascii(m)

  p.symbol

  subscript(i) = join(Char(0x2080 + d) for d in reverse!(digits(i)))
  addSub(p,i)=Symbol(p,subscript(i))

  r=1:5


  p=FVector.(addSub.(Ref(:p), r   ),r,Ref("nu"))
  
  p(m)
  repr("text/FORM", p)

  greek(i) = Char(0x03b0 + i%26)
  subscript(i) = join(Char(0x2080 + d) for d in reverse!(digits(i)))

  FIndex.([Symbol(string(greek(i),subscript(333))) for i in 1:25])
  greek(25)
  using SymbolicUtils
  import SymbolicUtils: Symbolic, _isone, flatten_term, isnotflat, Chain, Fixpoint
  using TermInterface
  import TermInterface: istree, exprhead, operation, arguments, similarterm, metadata

  struct Fsymbol{T<:Number} <: Symbolic{T}
    name::Symbol 
  end

  abstract type Fexpr end
  abstract type Fterm <: Fexpr end


  s=Fsymbol{Complex}(:s)
  x=Fsymbol{Real}(:x)
  s+x

end