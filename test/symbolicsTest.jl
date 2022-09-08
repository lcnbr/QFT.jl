using Symbolics
@variables t α σ(..) β[1:2] C::(Matrix{Real}) z::(Vector{Complex})
@variables w(..) x(t) y
@variables ϵ p m


Symbolics.@arrayop nothing (i, j) z[i]*z[j]
using SymbolicUtils
@syms ϵ
@register_symbolic feynmanPropagator(x, y)
function feynmanPropagator(momentum,mass)
  return 1/(momentum^2-mass^2-1im*ϵ)
end
feynmanPropagator(x,y)

'z'*z
z^2


import SymbolicUtils: Sym,Symbolic,isadd,makeadd,add_t,Add,ismul,Pow,Div,Mul,isdiv,ispow,symtype,promote_symtype,makemul
abstract type Form end
struct FSymbol <: Form end
struct FIndex <: Form end
struct FVector <: Form end  

test=Sym{FSymbol}(:x)

@syms x::FSymbol y::FIndex z(y)::FVector
z*z
x+x
x*x

test+test
const FS = Symbolic{<:Form}

import Base: (+), (-), (*), (//), (/), (\), (^)
function +(a::FS, b::FS)
    if isadd(a) && isadd(b)
        return Add(add_t(a,b),
                   a.coeff + b.coeff,
                   _merge(+, a.dict, b.dict, filter=_iszero))
    elseif isadd(a)
        coeff, dict = makeadd(1, 0, b)
        return Add(add_t(a,b), a.coeff + coeff, _merge(+, a.dict, dict, filter=_iszero))
    elseif isadd(b)
        return b + a
    end
    coeff, dict = makeadd(1, 0, a, b)
    Add(add_t(a,b), coeff, dict)
end


function +(a::Number, b::FS)
  iszero(a) && return b
  if isadd(b)
      Add(add_t(a,b), a + b.coeff, b.dict)
  else
      Add(add_t(a,b), makeadd(1, a, b)...)
  end
end

+(a::FS, b::Number) = b + a

+(a::FS) = a

function -(a::FS)
  isadd(a) ? Add(sub_t(a), -a.coeff, mapvalues((_,v) -> -v, a.dict)) :
  Add(sub_t(a), makeadd(-1, 0, a)...)
end

function -(a::FS, b::FS)
  isadd(a) && isadd(b) ? Add(sub_t(a,b),
                             a.coeff - b.coeff,
                             _merge(-, a.dict,
                                    b.dict,
                                    filter=_iszero)) : a + (-b)
end

-(a::Number, b::FS) = a + (-b)
-(a::FS, b::Number) = a + (-b)


mul_t(a,b) = promote_symtype(*, symtype(a), symtype(b))
mul_t(a) = promote_symtype(*, symtype(a))

*(a::FS) = a

function *(a::FS, b::FS)
  # Always make sure Div wraps Mul
  if isdiv(a) && isdiv(b)
      Div(a.num * b.num, a.den * b.den)
  elseif isdiv(a)
      Div(a.num * b, a.den)
  elseif isdiv(b)
      Div(a * b.num, b.den)
  elseif ismul(a) && ismul(b)
      Mul(mul_t(a, b),
          a.coeff * b.coeff,
          _merge(+, a.dict, b.dict, filter=_iszero))
  elseif ismul(a) && ispow(b)
      if b.exp isa Number
          Mul(mul_t(a, b),
              a.coeff, _merge(+, a.dict, Base.ImmutableDict(b.base=>b.exp), filter=_iszero))
      else
          Mul(mul_t(a, b),
              a.coeff, _merge(+, a.dict, Base.ImmutableDict(b=>1), filter=_iszero))
      end
  elseif ispow(a) && ismul(b)
      b * a
  else
      Mul(mul_t(a,b), makemul(1, a, b)...)
  end
end

function *(a::Number, b::FS)
  if iszero(a)
      a
  elseif isone(a)
      b
  elseif isdiv(b)
      Div(a*b.num, b.den)
  elseif isone(-a) && isadd(b)
      # -1(a+b) -> -a - b
      T = promote_symtype(+, typeof(a), symtype(b))
      Add(T, b.coeff * a, Dict{Any,Any}(k=>v*a for (k, v) in b.dict))
  else
      Mul(mul_t(a, b), makemul(a, b)...)
  end
end

###
### Div
###

/(a::Union{FS,Number}, b::FS) = Div(a, b)

*(a::FS, b::Number) = b * a

\(a::FS, b::Union{Number, FS}) = b / a

\(a::Number, b::FS) = b / a

/(a::FS, b::Number) = (b isa Integer ? 1//b : inv(b)) * a

//(a::Union{FS, Number}, b::FS) = a / b

//(a::FS, b::T) where {T <: Number} = (one(T) // b) * a


###
### Pow
###

function ^(a::FS, b)
  if b isa Number && iszero(b)
      # fast path
      1
  elseif b isa Number && b < 0
      Div(1, a ^ (-b))
  elseif ismul(a) && b isa Number
      coeff = unstable_pow(a.coeff, b)
      Mul(promote_symtype(^, symtype(a), symtype(b)),
          coeff, mapvalues((k, v) -> b*v, a.dict))
  else
      Pow(a, b)
  end
end

^(a::Number, b::FS) = Pow(a, b)




end