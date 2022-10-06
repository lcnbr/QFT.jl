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
*--#[d1l0:
L [d1l0|o.i.2|o.i|] = 1*i_* prop(-1,0,q1)*d_(nu1,nu2)*i_*e*qch1*(p3(nu1)-p4(nu1))*i_*e*qch2*(p1(nu2)-p2(nu2));
#procedure momentumRouting
Id p1 = p2 + p4 + -p3;
Id q1 = p3 + -p4;

#endprocedure
*--#]d1l0:

