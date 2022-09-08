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
using SymmetricDispatch

#=  
Id prop(phi'i',indx(a?),indx(b?),momen?)=i_* prop(-1,'i',momen.momen,a,b);
* And scalar masseless propagators'j'
Id prop(photon,indx(a?),indx(b?),momen?)=i_* prop(-1,0,momen.momen,a,b)*metric(indx(a),indx(b));
  =#



function feynmanRule(p,f1::Photon,f2::Photon;MIME="text/FORM",kw...)
  momen = repr(MIME,p.symbol)
  indx1 = repr(MIME,index(f1))
  indx2 = repr(MIME,index(f2))
  i = repr(MIME,im)

  "$i* prop(-1,0,$momen.$momen,$indx1,$indx2)*d_($indx2,$indx2)"

  #"(d_($(repr(MIME,index(f1))),$(repr(MIME,index(f2))))-(1-xi)*($(repr(MIME,p(index(f1))))*$(repr(MIME,p(index(f2)))))*inv($(repr(MIME, p.symbol))^2))*" *feynmanPropagator(p,mass(f1);MIME,kw...)
end


@symmetric function feynmanRule(p,[f1::Phi1,f2::Phi1c];MIME="text/FORM",kw...)
  momen = repr(MIME,p.symbol)
  indx1 = 1
  indx2 = 1
  i = repr(MIME,im)

  "$i* prop(-1,1,$momen.$momen,$indx1,$indx2)"

  #"(d_($(repr(MIME,index(f1))),$(repr(MIME,index(f2))))-(1-xi)*($(repr(MIME,p(index(f1))))*$(repr(MIME,p(index(f2)))))*inv($(repr(MIME, p.symbol))^2))*" *feynmanPropagator(p,mass(f1);MIME,kw...)
end

@symmetric function feynmanRule(p,[f1::Phi2,f2::Phi2c];MIME="text/FORM",kw...)
  momen = repr(MIME,p.symbol)
  indx1 = 1
  indx2 = 1
  i = repr(MIME,im)

  "$i* prop(-1,2,$momen.$momen,$indx1,$indx2)"

  #"(d_($(repr(MIME,index(f1))),$(repr(MIME,index(f2))))-(1-xi)*($(repr(MIME,p(index(f1))))*$(repr(MIME,p(index(f2)))))*inv($(repr(MIME, p.symbol))^2))*" *feynmanPropagator(p,mass(f1);MIME,kw...)
end


#=
i_*e*qch'i'*(p2(mu)-p1(mu));

* --- 4pt vertex

* just contracts the indices

Id vrtx(phi'i'c(?a),photon(mu?,?b),photon(nu?,?c),phi'i'(?d))=2*i_*qch'i'^2*e^2*d_(mu,nu);
=#


@symmetric function feynmanRule([(pᵩ₁,a)::Tuple{Any,ScalarField{S}},(pᵩ₂,b)::Tuple{Any,AdjointField{ScalarField{S}}},(pᵧ,γ)::Tuple{Any,Photon}];MIME="text/FORM",kw...) where {S}

  p1 = repr(MIME,pᵩ₁(index(γ)))
  p2 = repr(MIME,pᵩ₂(index(γ)))
  q = repr(MIME,charge(a))
  i = repr(MIME,im)
  "$i*e*$q*($p2-$p1)"
    #"$(repr(MIME,im))*$(repr(MIME, charge(b)))*($(repr(MIME,pᵩ₁(index(γ))))-$(repr(MIME,pᵩ₂(index(γ)))))"
end

#=@symmetric function feynmanRule([(pᵩ₁,a)::Tuple{Any,Phi2},(pᵩ₂,b)::Tuple{Any,Phi2c},(pᵧ,γ)::Tuple{Any,Photon}];MIME="text/FORM",kw...)
  "$(repr(MIME,im))*Q2*($(repr(MIME,(pᵩ₁(index(γ))))-$(repr(MIME,pᵩ₂(index(γ)))))"
end   
=#

@symmetric function feynmanRule([(pᵩ₁,a)::Tuple{Any,ScalarField{S}},(pᵩ₂,b)::Tuple{Any,AdjointField{ScalarField{S}}},(pᵧ₁,γ₁)::Tuple{Any,Photon},(pᵧ₂,γ₂)::Tuple{Any,Photon}];MIME="text/FORM",kw...)where {S}    
  mu = repr(MIME,index(γ₁))
  nu = repr(MIME,index(γ₂)) 
  q = repr(MIME,charge(a))
  i = repr(MIME,im)
  "2*$i*$q^2*e^2*d_($mu,$nu)"
  #"2*$(repr(MIME,im))*$(repr(MIME, charge(b)))*d_($(repr(MIME,(index(γ)))),$(repr(MIME,(index(γ)))))"
end 