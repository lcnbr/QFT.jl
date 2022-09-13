Photon=GaugeVectorField{:Photon}
Base.adjoint(::Type{Photon})=Photon
Phi1 =  ScalarField{:Phi1}
Phi1c = adjoint(Phi1)
Phi2 = ScalarField{:Phi2}
Phi2c=  adjoint(Phi2)

Fields.charge(::Type{Phi1})=:qch1
Fields.charge(::Type{Phi2})=:qch2
Fields.mass(::Type{Phi1})=:m1
Fields.mass(::Type{Phi2})=:m2
Fields.color(::Type{Photon})="grey"
Fields.color(::Type{Phi1})="blue"
Fields.color(::Type{Phi2})="red"
Fields.color(::Type{Phi1c})="deepskyblue"
Fields.color(::Type{Phi2c})="lightcoral"



import QFT.Fields: feynmanRule,feynmanPropagator
using QFT.Fields
import QFT.FieldGraphs: init,joinRule!,AbstractFieldGraph 
using SymmetricDispatch

#=  
Id prop(phi'i',indx(a?),indx(b?),momen?)=i_* prop(-1,'i',momen.momen,a,b);
* And scalar masseless propagators'j'
Id prop(photon,indx(a?),indx(b?),momen?)=i_* prop(-1,0,momen.momen,a,b)*metric(indx(a),indx(b));
=#

function feynmanRule(::MIME"qcounting",::Vararg{Tuple{Any,AbstractField},N}) where {N}
  return 0
end

function feynmanRule(m::MIME"qcounting",(p1,f1)::Tuple{Any,AbstractField},(p2,f2)::Tuple{Any,AbstractField})
  @assert p1==p2
  return feynmanRule(m,p1,f1,f2)
end
function feynmanRule(mime::MIME"text/FORM",p,f1::Photon,f2::Photon)
  momen = repr(mime,p.symbol)
  indx1 = repr(mime,index(f1))
  indx2 = repr(mime,index(f2))
  i = repr(mime,im)


  "$i* prop(-1,0,$momen)*d_($indx1,$indx2)"

  #"(d_($(repr(mime,index(f1))),$(repr(mime,index(f2))))-(1-xi)*($(repr(mime,p(index(f1))))*$(repr(mime,p(index(f2)))))*inv($(repr(mime, p.symbol))^2))*" *feynmanPropagator(p,mass(f1);mime,kw...)
end

function feynmanRule(mime::MIME"qcounting",p,f1::Photon,f2::Photon)
  -2
end


@symmetric function feynmanRule(mime::MIME"text/FORM",p,[f1::Phi1,f2::Phi1c])
  momen = repr(mime,p.symbol)
  i = repr(mime,im)

  "$i* prop(-1,1,$momen)"

  #"(d_($(repr(mime,index(f1))),$(repr(mime,index(f2))))-(1-xi)*($(repr(mime,p(index(f1))))*$(repr(mime,p(index(f2)))))*inv($(repr(mime, p.symbol))^2))*" *feynmanPropagator(p,mass(f1);mime,kw...)
end

@symmetric function feynmanRule(mime::MIME"qcounting",p,[f1::Phi1,f2::Phi1c])
  -1
end

@symmetric function feynmanRule(mime::MIME"text/FORM",p,[f1::Phi2,f2::Phi2c])
  momen = repr(mime,p.symbol)
  i = repr(mime,im)

  "$i* prop(-1,2,$momen)"

  #"(d_($(repr(mime,index(f1))),$(repr(mime,index(f2))))-(1-xi)*($(repr(mime,p(index(f1))))*$(repr(mime,p(index(f2)))))*inv($(repr(mime, p.symbol))^2))*" *feynmanPropagator(p,mass(f1);mime,kw...)
end
@symmetric function feynmanRule(mime::MIME"qcounting",p,[f1::Phi2,f2::Phi2c])
  -1
end


function init(g::AbstractFieldGraph ,::MIME"qcounting")
  @show nloops(g) 
  return 4*nloops(g)
end

function joinRule!(res,rule,::MIME"qcounting")
  @show rule
  res + rule
end


#=
i_*e*qch'i'*(p2(mu)-p1(mu));

* --- 4pt vertex

* just contracts the indices

Id vrtx(phi'i'c(?a),photon(mu?,?b),photon(nu?,?c),phi'i'(?d))=2*i_*qch'i'^2*e^2*d_(mu,nu);
=#


@symmetric function feynmanRule(mime::MIME"text/FORM",[(pᵩ₁,a)::Tuple{Any,ScalarField{S}},(pᵩ₂,b)::Tuple{Any,AdjointField{ScalarField{S}}},(pᵧ,γ)::Tuple{Any,Photon}]) where {S}

  p1 = repr(mime,pᵩ₁(index(γ)))
  p2 = repr(mime,pᵩ₂(index(γ)))
  q = repr(mime,charge(a))
  i = repr(mime,im)
  "$i*e*$q*($p2-$p1)"
    #"$(repr(mime,im))*$(repr(mime, charge(b)))*($(repr(mime,pᵩ₁(index(γ))))-$(repr(mime,pᵩ₂(index(γ)))))"
end

#=@symmetric function feynmanRule(mime::MIME"text/FORM",[(pᵩ₁,a)::Tuple{Any,Phi2},(pᵩ₂,b)::Tuple{Any,Phi2c},(pᵧ,γ)::Tuple{Any,Photon}])
  "$(repr(mime,im))*Q2*($(repr(mime,(pᵩ₁(index(γ))))-$(repr(mime,pᵩ₂(index(γ)))))"
end   
=#




@symmetric function feynmanRule(mime::MIME"text/FORM",[(pᵧ₁,γ₁)::Tuple{Any,Photon},(pᵧ₂,γ₂)::Tuple{Any,Photon},(pᵩ₂,b)::Tuple{Any,AdjointField{ScalarField{S}}},(pᵩ₁,a)::Tuple{Any,ScalarField{S}}]) where {S}    
  mu = repr(mime,index(γ₁))
  nu = repr(mime,index(γ₂)) 
  q = repr(mime,charge(a))
  i = repr(mime,im)
  "2*$i*$q^2*e^2*d_($mu,$nu)"
  #"2*$(repr(mime,im))*$(repr(mime, charge(b)))*d_($(repr(mime,(index(γ)))),$(repr(mime,(index(γ)))))"
end 