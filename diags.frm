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
  *--#[d1l2:
L [d1l2|o.2.2.3|i.3|o.i|] = 1*i_* prop(-1,0,q1)*d_(nu1,nu2)*i_* prop(-1,0,q2)*d_(nu3,nu4)*i_* prop(-1,2,q3)*i_* prop(-1,0,q4)*d_(nu7,nu8)*2*i_*qch1^2*e^2*d_(nu1,nu3)*2*i_*qch2^2*e^2*d_(nu7,nu2)*2*i_*qch2^2*e^2*d_(nu8,nu4);
#procedure momentumRouting
Id p1 = p2 + p4 + -p3;
Id q1 = p3 + -p4 + -q2;
Id q3 = p2 + p4 + q2 + q4 + -p3;

#endprocedure
*--#]d1l2:

*--#[d2l2:
L [d2l2|o.2.2.3|i.3|o.i|] = 1*i_* prop(-1,0,q1)*d_(nu1,nu2)*i_* prop(-1,0,q2)*d_(nu3,nu4)*i_* prop(-1,1,q3)*i_* prop(-1,0,q4)*d_(nu7,nu8)*2*i_*qch2^2*e^2*d_(nu1,nu3)*2*i_*qch1^2*e^2*d_(nu7,nu2)*2*i_*qch1^2*e^2*d_(nu8,nu4);
#procedure momentumRouting
Id p1 = p2 + p4 + -p3;
Id q1 = p4 + -p3 + -q2;
Id q3 = p3 + q2 + q4;

#endprocedure
*--#]d2l2:

*--#[d3l2:
L [d3l2|2.2.4|3|o.i.4|o.i|] = 1*i_* prop(-1,1,q1)*i_* prop(-1,1,q2)*i_* prop(-1,0,q3)*d_(nu5,nu6)*i_* prop(-1,0,q4)*d_(nu7,nu8)*i_* prop(-1,0,q5)*d_(nu9,nu1 0)*i_*e*qch1*(q2(nu5)-q1(nu5))*i_*e*qch1*(q1(nu7)-q2(nu7))*2*i_*qch1^2*e^2*d_(nu6,nu9)*2*i_*qch2^2*e^2*d_(nu8,nu1 0);
#procedure momentumRouting
Id p1 = p2 + p4 + -p3;
Id q4 = p3 + -p4 + -q5;
Id q1 = p3 + q2 + -p4 + -q5;
Id q3 = p4 + q5 + -p3;

#endprocedure
*--#]d3l2:

*--#[d4l2:
L [d4l2|2.4.4|o.i.3|o.i.4||] = 1*i_* prop(-1,2,q1)*i_* prop(-1,2,q2)*i_* prop(-1,0,q3)*d_(nu5,nu6)*i_* prop(-1,0,q4)*d_(nu7,nu8)*i_* prop(-1,0,q5)*d_(nu9,nu1 0)*i_*e*qch2*(q2(nu5)-q1(nu5))*i_*e*qch2*(q1(nu7)-q2(nu7))*2*i_*qch1^2*e^2*d_(nu6,nu9)*2*i_*qch2^2*e^2*d_(nu8,nu1 0);
#procedure momentumRouting
Id p1 = p2 + p4 + -p3;
Id q4 = p3 + -p4 + -q5;
Id q1 = p3 + q2 + -p4 + -q5;
Id q3 = p4 + q5 + -p3;

#endprocedure
*--#]d4l2:

*--#[d5l2:
L [d5l2|o.i.2.4|i.3.4|o.4||] = 1*i_* prop(-1,1,q1)*i_* prop(-1,0,q2)*d_(nu3,nu4)*i_* prop(-1,0,q3)*d_(nu5,nu6)*i_* prop(-1,1,q4)*i_* prop(-1,0,q5)*d_(nu9,nu1 0)*i_*e*qch1*(q1(nu3)-p4(nu3))*i_*e*qch1*(q4(nu5)-q1(nu5))*2*i_*qch2^2*e^2*d_(nu6,nu9)*2*i_*qch1^2*e^2*d_(nu1 0,nu4);
#procedure momentumRouting
Id p1 = p2 + p4 + -p3;
Id q4 = p3 + q2 + q5;
Id q1 = p4 + q2;
Id q3 = p3 + q5 + -p4;

#endprocedure
*--#]d5l2:

*--#[d6l2:
L [d6l2|o.i.2.4|i.3.4|o.4||] = 1*i_* prop(-1,2,q1)*i_* prop(-1,0,q2)*d_(nu3,nu4)*i_* prop(-1,0,q3)*d_(nu5,nu6)*i_* prop(-1,2,q4)*i_* prop(-1,0,q5)*d_(nu9,nu1 0)*i_*e*qch2*(q1(nu3)-p2(nu3))*i_*e*qch2*(q4(nu5)-q1(nu5))*2*i_*qch1^2*e^2*d_(nu6,nu9)*2*i_*qch2^2*e^2*d_(nu1 0,nu4);
#procedure momentumRouting
Id p1 = p2 + p4 + -p3;
Id q4 = p2 + p4 + q2 + q5 + -p3;
Id q1 = p2 + q2;
Id q3 = p4 + q5 + -p3;

#endprocedure
*--#]d6l2:

*--#[d7l2:
L [d7l2|o.3.4|o.i.3.4|4|i|] = 1*i_* prop(-1,1,q1)*i_* prop(-1,0,q2)*d_(nu3,nu4)*i_* prop(-1,0,q3)*d_(nu5,nu6)*i_* prop(-1,1,q4)*i_* prop(-1,0,q5)*d_(nu9,nu1 0)*i_*e*qch1*(p3(nu3)-q1(nu3))*i_*e*qch1*(q1(nu5)-q4(nu5))*2*i_*qch2^2*e^2*d_(nu6,nu9)*2*i_*qch1^2*e^2*d_(nu1 0,nu4);
#procedure momentumRouting
Id p1 = p2 + p4 + -p3;
Id q4 = p4 + -q2 + -q5;
Id q1 = p3 + -q2;
Id q3 = p3 + q5 + -p4;

#endprocedure
*--#]d7l2:

*--#[d8l2:
L [d8l2|o.3.4|o.i.3.4|4|i|] = 1*i_* prop(-1,2,q1)*i_* prop(-1,0,q2)*d_(nu3,nu4)*i_* prop(-1,0,q3)*d_(nu5,nu6)*i_* prop(-1,2,q4)*i_* prop(-1,0,q5)*d_(nu9,nu1 0)*i_*e*qch2*(p1(nu3)-q1(nu3))*i_*e*qch2*(q1(nu5)-q4(nu5))*2*i_*qch1^2*e^2*d_(nu6,nu9)*2*i_*qch2^2*e^2*d_(nu1 0,nu4);
#procedure momentumRouting
Id p1 = p2 + p4 + -p3;
Id q4 = p2 + -q2 + -q5;
Id q1 = p2 + p4 + -p3 + -q2;
Id q3 = p4 + q5 + -p3;

#endprocedure
*--#]d8l2:

*--#[d9l2:
L [d9l2|o.2.3|4.4|o.i.4|i|] = 1*i_* prop(-1,1,q1)*i_* prop(-1,0,q2)*d_(nu3,nu4)*i_* prop(-1,1,q3)*i_* prop(-1,0,q4)*d_(nu7,nu8)*i_* prop(-1,0,q5)*d_(nu9,nu1 0)*i_*e*qch1*(q1(nu3)-p4(nu3))*i_*e*qch1*(q3(nu7)-q1(nu7))*2*i_*qch2^2*e^2*d_(nu4,nu9);
#procedure momentumRouting
Id q2 = p3 + q5 + -p4;
Id p1 = p2 + p4 + -p3;
Id q1 = p3 + q5;
Id q3 = p3 + q4 + q5;

#endprocedure
*--#]d9l2:

*--#[d10l2:
L [d10l2|o.2.3|4.4|o.i.4|i|] = 1*i_* prop(-1,2,q1)*i_* prop(-1,0,q2)*d_(nu3,nu4)*i_* prop(-1,2,q3)*i_* prop(-1,0,q4)*d_(nu7,nu8)*i_* prop(-1,0,q5)*d_(nu9,nu1 0)*i_*e*qch2*(q1(nu3)-p2(nu3))*i_*e*qch2*(q3(nu7)-q1(nu7))*2*i_*qch1^2*e^2*d_(nu4,nu9);
#procedure momentumRouting
Id q2 = p4 + q5 + -p3;
Id p1 = p2 + p4 + -p3;
Id q1 = p2 + p4 + q5 + -p3;
Id q3 = p2 + p4 + q4 + q5 + -p3;

#endprocedure
*--#]d10l2:

*--#[d11l2:
L [d11l2|o.2.3|o.i.4|4.4|i|] = 1*i_* prop(-1,1,q1)*i_* prop(-1,0,q2)*d_(nu3,nu4)*i_* prop(-1,1,q3)*i_* prop(-1,0,q4)*d_(nu7,nu8)*i_* prop(-1,0,q5)*d_(nu9,nu1 0)*i_*e*qch1*(p3(nu3)-q1(nu3))*i_*e*qch1*(q1(nu7)-q3(nu7))*2*i_*qch2^2*e^2*d_(nu4,nu9);
#procedure momentumRouting
Id q2 = p3 + q5 + -p4;
Id p1 = p2 + p4 + -p3;
Id q1 = p4 + -q5;
Id q3 = p4 + -q4 + -q5;

#endprocedure
*--#]d11l2:

*--#[d12l2:
L [d12l2|o.2.3|o.i.4|4.4|i|] = 1*i_* prop(-1,2,q1)*i_* prop(-1,0,q2)*d_(nu3,nu4)*i_* prop(-1,2,q3)*i_* prop(-1,0,q4)*d_(nu7,nu8)*i_* prop(-1,0,q5)*d_(nu9,nu1 0)*i_*e*qch2*(p1(nu3)-q1(nu3))*i_*e*qch2*(q1(nu7)-q3(nu7))*2*i_*qch1^2*e^2*d_(nu4,nu9);
#procedure momentumRouting
Id q2 = p4 + q5 + -p3;
Id p1 = p2 + p4 + -p3;
Id q1 = p2 + -q5;
Id q3 = p2 + -q4 + -q5;

#endprocedure
*--#]d12l2:

*--#[d13l2:
L [d13l2|3.3.4|o.i.3|4|o.i|] = 1*i_* prop(-1,0,q1)*d_(nu1,nu2)*i_* prop(-1,0,q2)*d_(nu3,nu4)*i_* prop(-1,1,q3)*i_* prop(-1,1,q4)*i_* prop(-1,0,q5)*d_(nu9,nu1 0)*i_*e*qch1*(p3(nu1)-p4(nu1))*i_*e*qch1*(q3(nu3)-q4(nu3))*2*i_*qch2^2*e^2*d_(nu4,nu9)*2*i_*qch1^2*e^2*d_(nu1 0,nu2);
#procedure momentumRouting
Id q2 = p3 + q5 + -p4;
Id p1 = p2 + p4 + -p3;
Id q1 = p3 + -p4;
Id q3 = p3 + q4 + q5 + -p4;

#endprocedure
*--#]d13l2:

*--#[d14l2:
L [d14l2|o.i.3.4|o.i.4|4.4||] = 1*i_* prop(-1,0,q1)*d_(nu1,nu2)*i_* prop(-1,0,q2)*d_(nu3,nu4)*i_* prop(-1,2,q3)*i_* prop(-1,2,q4)*i_* prop(-1,0,q5)*d_(nu9,nu1 0)*i_*e*qch1*(p3(nu1)-p4(nu1))*i_*e*qch2*(q3(nu3)-q4(nu3))*2*i_*qch2^2*e^2*d_(nu4,nu9)*2*i_*qch2^2*e^2*d_(nu1 0,nu2);
#procedure momentumRouting
Id q2 = p3 + q5 + -p4;
Id p1 = p2 + p4 + -p3;
Id q1 = p3 + -p4;
Id q3 = p3 + q4 + q5 + -p4;

#endprocedure
*--#]d14l2:

*--#[d15l2:
L [d15l2|o.i.3.4|o.i.4|4.4||] = 1*i_* prop(-1,0,q1)*d_(nu1,nu2)*i_* prop(-1,0,q2)*d_(nu3,nu4)*i_* prop(-1,1,q3)*i_* prop(-1,1,q4)*i_* prop(-1,0,q5)*d_(nu9,nu1 0)*i_*e*qch2*(p1(nu1)-p2(nu1))*i_*e*qch1*(q3(nu3)-q4(nu3))*2*i_*qch1^2*e^2*d_(nu4,nu9)*2*i_*qch1^2*e^2*d_(nu1 0,nu2);
#procedure momentumRouting
Id q2 = p4 + q5 + -p3;
Id p1 = p2 + p4 + -p3;
Id q1 = p4 + -p3;
Id q3 = p4 + q4 + q5 + -p3;

#endprocedure
*--#]d15l2:

*--#[d16l2:
L [d16l2|3.3.4|o.i.3|4|o.i|] = 1*i_* prop(-1,0,q1)*d_(nu1,nu2)*i_* prop(-1,0,q2)*d_(nu3,nu4)*i_* prop(-1,2,q3)*i_* prop(-1,2,q4)*i_* prop(-1,0,q5)*d_(nu9,nu1 0)*i_*e*qch2*(p1(nu1)-p2(nu1))*i_*e*qch2*(q3(nu3)-q4(nu3))*2*i_*qch1^2*e^2*d_(nu4,nu9)*2*i_*qch2^2*e^2*d_(nu1 0,nu2);
#procedure momentumRouting
Id q2 = p4 + q5 + -p3;
Id p1 = p2 + p4 + -p3;
Id q1 = p4 + -p3;
Id q3 = p4 + q4 + q5 + -p3;

#endprocedure
*--#]d16l2:

*--#[d17l2:
L [d17l2|o.i.2.2|3.3|4|o.i|] = 1*i_* prop(-1,0,q1)*d_(nu1,nu2)*i_* prop(-1,1,q2)*i_* prop(-1,1,q3)*i_* prop(-1,0,q4)*d_(nu7,nu8)*i_* prop(-1,0,q5)*d_(nu9,nu1 0)*i_*e*qch1*(p3(nu1)-p4(nu1))*i_*e*qch1*(q2(nu2)-q3(nu2))*2*i_*qch2^2*e^2*d_(nu7,nu9);
#procedure momentumRouting
Id q2 = p4 + q3 + -p3;
Id q4 = p4 + -p3 + -q5;
Id p1 = p2 + p4 + -p3;
Id q1 = p3 + -p4;

#endprocedure
*--#]d17l2:

*--#[d18l2:
L [d18l2|o.i.2.2|3.3|4|o.i|] = 1*i_* prop(-1,0,q1)*d_(nu1,nu2)*i_* prop(-1,2,q2)*i_* prop(-1,2,q3)*i_* prop(-1,0,q4)*d_(nu7,nu8)*i_* prop(-1,0,q5)*d_(nu9,nu1 0)*i_*e*qch1*(p3(nu1)-p4(nu1))*i_*e*qch2*(q2(nu2)-q3(nu2))*2*i_*qch2^2*e^2*d_(nu7,nu9);
#procedure momentumRouting
Id q2 = p4 + q3 + -p3;
Id q4 = p4 + -p3 + -q5;
Id p1 = p2 + p4 + -p3;
Id q1 = p3 + -p4;

#endprocedure
*--#]d18l2:

*--#[d19l2:
L [d19l2|o.i.2.2|3.3|4|o.i|] = 1*i_* prop(-1,0,q1)*d_(nu1,nu2)*i_* prop(-1,1,q2)*i_* prop(-1,1,q3)*i_* prop(-1,0,q4)*d_(nu7,nu8)*i_* prop(-1,0,q5)*d_(nu9,nu1 0)*i_*e*qch2*(p1(nu1)-p2(nu1))*i_*e*qch1*(q2(nu2)-q3(nu2))*2*i_*qch1^2*e^2*d_(nu7,nu9);
#procedure momentumRouting
Id q2 = p3 + q3 + -p4;
Id q4 = p3 + -p4 + -q5;
Id p1 = p2 + p4 + -p3;
Id q1 = p4 + -p3;

#endprocedure
*--#]d19l2:

*--#[d20l2:
L [d20l2|o.i.2.2|3.3|4|o.i|] = 1*i_* prop(-1,0,q1)*d_(nu1,nu2)*i_* prop(-1,2,q2)*i_* prop(-1,2,q3)*i_* prop(-1,0,q4)*d_(nu7,nu8)*i_* prop(-1,0,q5)*d_(nu9,nu1 0)*i_*e*qch2*(p1(nu1)-p2(nu1))*i_*e*qch2*(q2(nu2)-q3(nu2))*2*i_*qch1^2*e^2*d_(nu7,nu9);
#procedure momentumRouting
Id q2 = p3 + q3 + -p4;
Id q4 = p3 + -p4 + -q5;
Id p1 = p2 + p4 + -p3;
Id q1 = p4 + -p3;

#endprocedure
*--#]d20l2:

*--#[d21l2:
L [d21l2|i.2.3.4|o.4.4|o.i||] = 1*i_* prop(-1,0,q1)*d_(nu1,nu2)*i_* prop(-1,2,q2)*i_* prop(-1,2,q3)*i_* prop(-1,0,q4)*d_(nu7,nu8)*i_* prop(-1,0,q5)*d_(nu9,nu1 0)*i_*e*qch1*(p3(nu1)-p4(nu1))*i_*e*qch2*(q3(nu7)-q2(nu7))*2*i_*qch2^2*e^2*d_(nu9,nu2);
#procedure momentumRouting
Id q2 = p2 + p4 + q5 + -p3;
Id p1 = p2 + p4 + -p3;
Id q1 = p3 + -p4;
Id q3 = p2 + p4 + q4 + q5 + -p3;

#endprocedure
*--#]d21l2:

*--#[d22l2:
L [d22l2|3.3.4|o.i.4|i.4|o|] = 1*i_* prop(-1,0,q1)*d_(nu1,nu2)*i_* prop(-1,2,q2)*i_* prop(-1,2,q3)*i_* prop(-1,0,q4)*d_(nu7,nu8)*i_* prop(-1,0,q5)*d_(nu9,nu1 0)*i_*e*qch1*(p3(nu1)-p4(nu1))*i_*e*qch2*(q2(nu7)-q3(nu7))*2*i_*qch2^2*e^2*d_(nu9,nu2);
#procedure momentumRouting
Id q2 = p2 + -q5;
Id p1 = p2 + p4 + -p3;
Id q1 = p3 + -p4;
Id q3 = p2 + -q4 + -q5;

#endprocedure
*--#]d22l2:

*--#[d23l2:
L [d23l2|i.2.3.4|o.4.4|o.i||] = 1*i_* prop(-1,0,q1)*d_(nu1,nu2)*i_* prop(-1,1,q2)*i_* prop(-1,1,q3)*i_* prop(-1,0,q4)*d_(nu7,nu8)*i_* prop(-1,0,q5)*d_(nu9,nu1 0)*i_*e*qch2*(p1(nu1)-p2(nu1))*i_*e*qch1*(q3(nu7)-q2(nu7))*2*i_*qch1^2*e^2*d_(nu9,nu2);
#procedure momentumRouting
Id q2 = p3 + q5;
Id p1 = p2 + p4 + -p3;
Id q1 = p4 + -p3;
Id q3 = p3 + q4 + q5;

#endprocedure
*--#]d23l2:

*--#[d24l2:
L [d24l2|3.3.4|o.i.4|i.4|o|] = 1*i_* prop(-1,0,q1)*d_(nu1,nu2)*i_* prop(-1,1,q2)*i_* prop(-1,1,q3)*i_* prop(-1,0,q4)*d_(nu7,nu8)*i_* prop(-1,0,q5)*d_(nu9,nu1 0)*i_*e*qch2*(p1(nu1)-p2(nu1))*i_*e*qch1*(q2(nu7)-q3(nu7))*2*i_*qch1^2*e^2*d_(nu9,nu2);
#procedure momentumRouting
Id q2 = p4 + -q5;
Id p1 = p2 + p4 + -p3;
Id q1 = p4 + -p3;
Id q3 = p4 + -q4 + -q5;

#endprocedure
*--#]d24l2:

*--#[d25l2:
L [d25l2|i.3.3.4|o.i.4|o.4||] = 1*i_* prop(-1,0,q1)*d_(nu1,nu2)*i_* prop(-1,2,q2)*i_* prop(-1,2,q3)*i_* prop(-1,0,q4)*d_(nu7,nu8)*i_* prop(-1,0,q5)*d_(nu9,nu1 0)*i_*e*qch1*(p3(nu1)-p4(nu1))*i_*e*qch2*(q3(nu2)-q2(nu2));
#procedure momentumRouting
Id q2 = p2 + q4 + q5;
Id p1 = p2 + p4 + -p3;
Id q1 = p3 + -p4;
Id q3 = p2 + p4 + q4 + q5 + -p3;

#endprocedure
*--#]d25l2:

*--#[d26l2:
L [d26l2|i.3.3.4|o.i.4|o.4||] = 1*i_* prop(-1,0,q1)*d_(nu1,nu2)*i_* prop(-1,1,q2)*i_* prop(-1,1,q3)*i_* prop(-1,0,q4)*d_(nu7,nu8)*i_* prop(-1,0,q5)*d_(nu9,nu1 0)*i_*e*qch2*(p1(nu1)-p2(nu1))*i_*e*qch1*(q3(nu2)-q2(nu2));
#procedure momentumRouting
Id q2 = p4 + q4 + q5;
Id p1 = p2 + p4 + -p3;
Id q1 = p4 + -p3;
Id q3 = p3 + q4 + q5;

#endprocedure
*--#]d26l2:

*--#[d27l2:
L [d27l2|o.i.2.4|o.4|i.4.4||] = 1*i_* prop(-1,0,q1)*d_(nu1,nu2)*i_* prop(-1,1,q2)*i_* prop(-1,1,q3)*i_* prop(-1,0,q4)*d_(nu7,nu8)*i_* prop(-1,0,q5)*d_(nu9,nu1 0)*i_*e*qch1*(q2(nu1)-p4(nu1))*i_*e*qch1*(p3(nu7)-q3(nu7))*2*i_*qch2^2*e^2*d_(nu2,nu9);
#procedure momentumRouting
Id q2 = p3 + q5;
Id p1 = p2 + p4 + -p3;
Id q1 = p3 + q5 + -p4;
Id q3 = p3 + -q4;

#endprocedure
*--#]d27l2:

*--#[d28l2:
L [d28l2|o.i.2.4|o.4|i.4.4||] = 1*i_* prop(-1,0,q1)*d_(nu1,nu2)*i_* prop(-1,2,q2)*i_* prop(-1,2,q3)*i_* prop(-1,0,q4)*d_(nu7,nu8)*i_* prop(-1,0,q5)*d_(nu9,nu1 0)*i_*e*qch2*(q2(nu1)-p2(nu1))*i_*e*qch2*(p1(nu7)-q3(nu7))*2*i_*qch1^2*e^2*d_(nu2,nu9);
#procedure momentumRouting
Id q2 = p2 + p4 + q5 + -p3;
Id p1 = p2 + p4 + -p3;
Id q1 = p4 + q5 + -p3;
Id q3 = p2 + p4 + -p3 + -q4;

#endprocedure
*--#]d28l2:

*--#[d29l2:
L [d29l2|2.2.3.4|i|o.i.4|o|] = 1*i_* prop(-1,0,q1)*d_(nu1,nu2)*i_* prop(-1,1,q2)*i_* prop(-1,1,q3)*i_* prop(-1,0,q4)*d_(nu7,nu8)*i_* prop(-1,0,q5)*d_(nu9,nu1 0)*i_*e*qch1*(p3(nu1)-q2(nu1))*i_*e*qch1*(q3(nu7)-p4(nu7))*2*i_*qch2^2*e^2*d_(nu2,nu9)*2*i_*qch1^2*e^2*d_(nu1 0,nu8);
#procedure momentumRouting
Id q2 = p4 + -q5;
Id p1 = p2 + p4 + -p3;
Id q1 = p3 + q5 + -p4;
Id q3 = p4 + q4;

#endprocedure
*--#]d29l2:

*--#[d30l2:
L [d30l2|2.2.3.4|i|o.i.4|o|] = 1*i_* prop(-1,0,q1)*d_(nu1,nu2)*i_* prop(-1,2,q2)*i_* prop(-1,2,q3)*i_* prop(-1,0,q4)*d_(nu7,nu8)*i_* prop(-1,0,q5)*d_(nu9,nu1 0)*i_*e*qch2*(p1(nu1)-q2(nu1))*i_*e*qch2*(q3(nu7)-p2(nu7))*2*i_*qch1^2*e^2*d_(nu2,nu9)*2*i_*qch2^2*e^2*d_(nu1 0,nu8);
#procedure momentumRouting
Id q2 = p2 + -q5;
Id p1 = p2 + p4 + -p3;
Id q1 = p4 + q5 + -p3;
Id q3 = p2 + q4;

#endprocedure
*--#]d30l2:

*--#[d31l2:
L [d31l2|o.2.4|i.4|o.i.4.4||] = 1*i_* prop(-1,0,q1)*d_(nu1,nu2)*i_* prop(-1,1,q2)*i_* prop(-1,1,q3)*i_* prop(-1,0,q4)*d_(nu7,nu8)*i_* prop(-1,0,q5)*d_(nu9,nu1 0)*i_*e*qch1*(q2(nu1)-p4(nu1))*i_*e*qch1*(p3(nu2)-q3(nu2))*2*i_*qch2^2*e^2*d_(nu7,nu9);
#procedure momentumRouting
Id q2 = p4 + q1;
Id q4 = p4 + -p3 + -q5;
Id p1 = p2 + p4 + -p3;
Id q3 = p3 + q1;

#endprocedure
*--#]d31l2:

*--#[d32l2:
L [d32l2|o.2.4|i.4|o.i.4.4||] = 1*i_* prop(-1,0,q1)*d_(nu1,nu2)*i_* prop(-1,2,q2)*i_* prop(-1,2,q3)*i_* prop(-1,0,q4)*d_(nu7,nu8)*i_* prop(-1,0,q5)*d_(nu9,nu1 0)*i_*e*qch2*(q2(nu1)-p2(nu1))*i_*e*qch2*(p1(nu2)-q3(nu2))*2*i_*qch1^2*e^2*d_(nu7,nu9);
#procedure momentumRouting
Id q2 = p2 + q1;
Id q4 = p3 + -p4 + -q5;
Id p1 = p2 + p4 + -p3;
Id q3 = p2 + p4 + q1 + -p3;

#endprocedure
*--#]d32l2:

*--#[d33l2:
L [d33l2|i.2.3|o.3.4|o.4|i|] = 1*i_* prop(-1,1,q1)*i_* prop(-1,0,q2)*d_(nu3,nu4)*i_* prop(-1,0,q3)*d_(nu5,nu6)*i_* prop(-1,2,q4)*i_* prop(-1,0,q5)*d_(nu9,nu1 0)*i_*e*qch1*(q1(nu3)-p4(nu3))*i_*e*qch2*(q4(nu5)-p2(nu5))*2*i_*qch2^2*e^2*d_(nu1 0,nu4);
#procedure momentumRouting
Id q2 = p3 + q3 + -p4 + -q5;
Id q4 = p2 + q3;
Id p1 = p2 + p4 + -p3;
Id q1 = p3 + q3 + -q5;

#endprocedure
*--#]d33l2:

*--#[d34l2:
L [d34l2|o.2.3.4|i.4|o.4|i|] = 1*i_* prop(-1,0,q1)*d_(nu1,nu2)*i_* prop(-1,1,q2)*i_* prop(-1,2,q3)*i_* prop(-1,0,q4)*d_(nu7,nu8)*i_* prop(-1,0,q5)*d_(nu9,nu1 0)*i_*e*qch1*(q2(nu1)-p4(nu1))*i_*e*qch2*(p1(nu7)-q3(nu7))*2*i_*qch2^2*e^2*d_(nu9,nu2);
#procedure momentumRouting
Id q2 = p3 + q4 + q5;
Id p1 = p2 + p4 + -p3;
Id q1 = p3 + q4 + q5 + -p4;
Id q3 = p2 + p4 + -p3 + -q4;

#endprocedure
*--#]d34l2:

*--#[d35l2:
L [d35l2|o.2.3.4|i.4|o.4|i|] = 1*i_* prop(-1,0,q1)*d_(nu1,nu2)*i_* prop(-1,2,q2)*i_* prop(-1,1,q3)*i_* prop(-1,0,q4)*d_(nu7,nu8)*i_* prop(-1,0,q5)*d_(nu9,nu1 0)*i_*e*qch2*(q2(nu1)-p2(nu1))*i_*e*qch1*(p3(nu7)-q3(nu7))*2*i_*qch1^2*e^2*d_(nu9,nu2);
#procedure momentumRouting
Id q2 = p2 + p4 + q4 + q5 + -p3;
Id p1 = p2 + p4 + -p3;
Id q1 = p4 + q4 + q5 + -p3;
Id q3 = p3 + -q4;

#endprocedure
*--#]d35l2:

*--#[d36l2:
L [d36l2|o.2.3.4|i.3|o.4|i|] = 1*i_* prop(-1,1,q1)*i_* prop(-1,0,q2)*d_(nu3,nu4)*i_* prop(-1,0,q3)*d_(nu5,nu6)*i_* prop(-1,2,q4)*i_* prop(-1,0,q5)*d_(nu9,nu1 0)*i_*e*qch1*(p3(nu3)-q1(nu3))*i_*e*qch2*(p1(nu5)-q4(nu5))*2*i_*qch2^2*e^2*d_(nu1 0,nu4);
#procedure momentumRouting
Id q2 = p3 + q3 + -p4 + -q5;
Id q4 = p2 + p4 + -p3 + -q3;
Id p1 = p2 + p4 + -p3;
Id q1 = p4 + q5 + -q3;

#endprocedure
*--#]d36l2:

*--#[d37l2:
L [d37l2|o.3.4.4|i.3.3|o|i|] = 1*i_* prop(-1,1,q1)*i_* prop(-1,0,q2)*d_(nu3,nu4)*i_* prop(-1,2,q3)*i_* prop(-1,0,q4)*d_(nu7,nu8)*i_* prop(-1,0,q5)*d_(nu9,nu1 0)*i_*e*qch1*(q1(nu3)-p4(nu3))*i_*e*qch2*(q3(nu7)-p2(nu7));
#procedure momentumRouting
Id p1 = p2 + p4 + -p3;
Id q1 = p4 + q2;
Id q3 = p2 + q4;
Id q5 = p3 + -p4;

#endprocedure
*--#]d37l2:

*--#[d38l2:
L [d38l2|o.2.4.4|i.3.3|o|i|] = 1*i_* prop(-1,1,q1)*i_* prop(-1,0,q2)*d_(nu3,nu4)*i_* prop(-1,2,q3)*i_* prop(-1,0,q4)*d_(nu7,nu8)*i_* prop(-1,0,q5)*d_(nu9,nu1 0)*i_*e*qch1*(q1(nu3)-p4(nu3))*i_*e*qch2*(p1(nu7)-q3(nu7));
#procedure momentumRouting
Id p1 = p2 + p4 + -p3;
Id q1 = p4 + q2;
Id q3 = p2 + p4 + -p3 + -q4;
Id q5 = p3 + -p4;

#endprocedure
*--#]d38l2:

*--#[d39l2:
L [d39l2|o.2.4.4|i.3.3|o|i|] = 1*i_* prop(-1,2,q1)*i_* prop(-1,0,q2)*d_(nu3,nu4)*i_* prop(-1,1,q3)*i_* prop(-1,0,q4)*d_(nu7,nu8)*i_* prop(-1,0,q5)*d_(nu9,nu1 0)*i_*e*qch2*(q1(nu3)-p2(nu3))*i_*e*qch1*(p3(nu7)-q3(nu7));
#procedure momentumRouting
Id p1 = p2 + p4 + -p3;
Id q1 = p2 + q2;
Id q3 = p3 + -q4;
Id q5 = p4 + -p3;

#endprocedure
*--#]d39l2:

*--#[d40l2:
L [d40l2|i.4.4|i.3.3|o.4|o|] = 1*i_* prop(-1,1,q1)*i_* prop(-1,0,q2)*d_(nu3,nu4)*i_* prop(-1,2,q3)*i_* prop(-1,0,q4)*d_(nu7,nu8)*i_* prop(-1,0,q5)*d_(nu9,nu1 0)*i_*e*qch1*(p3(nu3)-q1(nu3))*i_*e*qch2*(p1(nu7)-q3(nu7));
#procedure momentumRouting
Id p1 = p2 + p4 + -p3;
Id q1 = p3 + -q2;
Id q3 = p2 + p4 + -p3 + -q4;
Id q5 = p3 + -p4;

#endprocedure
*--#]d40l2:

*--#[d41l2:
L [d41l2|i.2.4.4|o.3|o.4|i|] = 1*i_* prop(-1,0,q1)*d_(nu1,nu2)*i_* prop(-1,1,q2)*i_* prop(-1,2,q3)*i_* prop(-1,0,q4)*d_(nu7,nu8)*i_* prop(-1,0,q5)*d_(nu9,nu1 0)*i_*e*qch1*(q2(nu1)-p4(nu1))*i_*e*qch2*(q3(nu2)-p2(nu2));
#procedure momentumRouting
Id q2 = p3 + -q4 + -q5;
Id p1 = p2 + p4 + -p3;
Id q1 = p3 + -p4 + -q4 + -q5;
Id q3 = p2 + p4 + q4 + q5 + -p3;

#endprocedure
*--#]d41l2:

*--#[d42l2:
L [d42l2|o.2.3|o.4.4|i.4|i|] = 1*i_* prop(-1,1,q1)*i_* prop(-1,0,q2)*d_(nu3,nu4)*i_* prop(-1,0,q3)*d_(nu5,nu6)*i_* prop(-1,2,q4)*i_* prop(-1,0,q5)*d_(nu9,nu1 0)*i_*e*qch1*(q1(nu3)-p4(nu3))*i_*e*qch1*(p3(nu5)-q1(nu5))*2*i_*qch2^2*e^2*d_(nu9,nu4)*2*i_*qch2^2*e^2*d_(nu1 0,nu6);
#procedure momentumRouting
Id q2 = p3 + -p4 + -q3;
Id q4 = p2 + p4 + q3 + q5 + -p3;
Id p1 = p2 + p4 + -p3;
Id q1 = p3 + -q3;

#endprocedure
*--#]d42l2:

*--#[d43l2:
L [d43l2|i.2.3|o.4.4|o.4|i|] = 1*i_* prop(-1,1,q1)*i_* prop(-1,0,q2)*d_(nu3,nu4)*i_* prop(-1,0,q3)*d_(nu5,nu6)*i_* prop(-1,2,q4)*i_* prop(-1,0,q5)*d_(nu9,nu1 0)*i_*e*qch1*(q1(nu3)-p4(nu3))*i_*e*qch1*(p3(nu5)-q1(nu5))*2*i_*qch2^2*e^2*d_(nu9,nu4)*2*i_*qch2^2*e^2*d_(nu1 0,nu6);
#procedure momentumRouting
Id q2 = p3 + -p4 + -q3;
Id q4 = p2 + -q3 + -q5;
Id p1 = p2 + p4 + -p3;
Id q1 = p3 + -q3;

#endprocedure
*--#]d43l2:

*--#[d44l2:
L [d44l2|o.2.3|i.4|i.4.4|o|] = 1*i_* prop(-1,0,q1)*d_(nu1,nu2)*i_* prop(-1,1,q2)*i_* prop(-1,2,q3)*i_* prop(-1,0,q4)*d_(nu7,nu8)*i_* prop(-1,0,q5)*d_(nu9,nu1 0)*i_*e*qch1*(q2(nu1)-p4(nu1))*i_*e*qch2*(p1(nu2)-q3(nu2));
#procedure momentumRouting
Id q2 = p3 + -q4 + -q5;
Id p1 = p2 + p4 + -p3;
Id q1 = p3 + -p4 + -q4 + -q5;
Id q3 = p2 + -q4 + -q5;

#endprocedure
*--#]d44l2:

*--#[d45l2:
L [d45l2|o.2.3|i.4|i.4.4|o|] = 1*i_* prop(-1,0,q1)*d_(nu1,nu2)*i_* prop(-1,2,q2)*i_* prop(-1,1,q3)*i_* prop(-1,0,q4)*d_(nu7,nu8)*i_* prop(-1,0,q5)*d_(nu9,nu1 0)*i_*e*qch2*(q2(nu1)-p2(nu1))*i_*e*qch1*(p3(nu2)-q3(nu2));
#procedure momentumRouting
Id q2 = p2 + p4 + -p3 + -q4 + -q5;
Id p1 = p2 + p4 + -p3;
Id q1 = p4 + -p3 + -q4 + -q5;
Id q3 = p4 + -q4 + -q5;

#endprocedure
*--#]d45l2:

*--#[d46l2:
L [d46l2|o.2.3|o.4.4|i.4|i|] = 1*i_* prop(-1,2,q1)*i_* prop(-1,0,q2)*d_(nu3,nu4)*i_* prop(-1,0,q3)*d_(nu5,nu6)*i_* prop(-1,1,q4)*i_* prop(-1,0,q5)*d_(nu9,nu1 0)*i_*e*qch2*(q1(nu3)-p2(nu3))*i_*e*qch2*(p1(nu5)-q1(nu5))*2*i_*qch1^2*e^2*d_(nu9,nu4)*2*i_*qch1^2*e^2*d_(nu1 0,nu6);
#procedure momentumRouting
Id q2 = p4 + -p3 + -q3;
Id q4 = p3 + q3 + q5;
Id p1 = p2 + p4 + -p3;
Id q1 = p2 + p4 + -p3 + -q3;

#endprocedure
*--#]d46l2:

*--#[d47l2:
L [d47l2|i.2.3|o.4.4|o.4|i|] = 1*i_* prop(-1,2,q1)*i_* prop(-1,0,q2)*d_(nu3,nu4)*i_* prop(-1,0,q3)*d_(nu5,nu6)*i_* prop(-1,1,q4)*i_* prop(-1,0,q5)*d_(nu9,nu1 0)*i_*e*qch2*(q1(nu3)-p2(nu3))*i_*e*qch2*(p1(nu5)-q1(nu5))*2*i_*qch1^2*e^2*d_(nu9,nu4)*2*i_*qch1^2*e^2*d_(nu1 0,nu6);
#procedure momentumRouting
Id q2 = p4 + -p3 + -q3;
Id q4 = p4 + -q3 + -q5;
Id p1 = p2 + p4 + -p3;
Id q1 = p2 + p4 + -p3 + -q3;

#endprocedure
*--#]d47l2:

*--#[d48l2:
L [d48l2|i.2.2.4|i.3|o.4|o|] = 1*i_* prop(-1,0,q1)*d_(nu1,nu2)*i_* prop(-1,1,q2)*i_* prop(-1,2,q3)*i_* prop(-1,0,q4)*d_(nu7,nu8)*i_* prop(-1,0,q5)*d_(nu9,nu1 0)*i_*e*qch1*(p3(nu1)-q2(nu1))*i_*e*qch2*(p1(nu2)-q3(nu2));
#procedure momentumRouting
Id q2 = p4 + q4 + q5;
Id p1 = p2 + p4 + -p3;
Id q1 = p3 + -p4 + -q4 + -q5;
Id q3 = p2 + -q4 + -q5;

#endprocedure
*--#]d48l2:

*--#[d49l2:
L [d49l2|o.2.4|i.4.4|o.i.4||] = 1*i_* prop(-1,0,q1)*d_(nu1,nu2)*i_* prop(-1,0,q2)*d_(nu3,nu4)*i_* prop(-1,2,q3)*i_* prop(-1,2,q4)*i_* prop(-1,0,q5)*d_(nu9,nu1 0)*i_*e*qch1*(p3(nu1)-p4(nu1))*i_*e*qch2*(q3(nu3)-p2(nu3))*2*i_*qch2^2*e^2*d_(nu9,nu4)*2*i_*qch2^2*e^2*d_(nu1 0,nu2);
#procedure momentumRouting
Id p1 = p2 + p4 + -p3;
Id q4 = p2 + p4 + q2 + -p3 + -q5;
Id q1 = p3 + -p4;
Id q3 = p2 + q2;

#endprocedure
*--#]d49l2:

*--#[d50l2:
L [d50l2|2.3.4.4|o.i|i.4|o|] = 1*i_* prop(-1,0,q1)*d_(nu1,nu2)*i_* prop(-1,0,q2)*d_(nu3,nu4)*i_* prop(-1,2,q3)*i_* prop(-1,2,q4)*i_* prop(-1,0,q5)*d_(nu9,nu1 0)*i_*e*qch1*(p3(nu1)-p4(nu1))*i_*e*qch2*(p1(nu3)-q3(nu3))*2*i_*qch2^2*e^2*d_(nu9,nu4)*2*i_*qch2^2*e^2*d_(nu1 0,nu2);
#procedure momentumRouting
Id p1 = p2 + p4 + -p3;
Id q4 = p2 + q5 + -q2;
Id q1 = p3 + -p4;
Id q3 = p2 + p4 + -p3 + -q2;

#endprocedure
*--#]d50l2:

*--#[d51l2:
L [d51l2|o.2.4|i.4.4|o.i.4||] = 1*i_* prop(-1,0,q1)*d_(nu1,nu2)*i_* prop(-1,0,q2)*d_(nu3,nu4)*i_* prop(-1,1,q3)*i_* prop(-1,1,q4)*i_* prop(-1,0,q5)*d_(nu9,nu1 0)*i_*e*qch2*(p1(nu1)-p2(nu1))*i_*e*qch1*(q3(nu3)-p4(nu3))*2*i_*qch1^2*e^2*d_(nu9,nu4)*2*i_*qch1^2*e^2*d_(nu1 0,nu2);
#procedure momentumRouting
Id p1 = p2 + p4 + -p3;
Id q4 = p3 + q2 + -q5;
Id q1 = p4 + -p3;
Id q3 = p4 + q2;

#endprocedure
*--#]d51l2:

*--#[d52l2:
L [d52l2|2.3.4.4|o.i|i.4|o|] = 1*i_* prop(-1,0,q1)*d_(nu1,nu2)*i_* prop(-1,0,q2)*d_(nu3,nu4)*i_* prop(-1,1,q3)*i_* prop(-1,1,q4)*i_* prop(-1,0,q5)*d_(nu9,nu1 0)*i_*e*qch2*(p1(nu1)-p2(nu1))*i_*e*qch1*(p3(nu3)-q3(nu3))*2*i_*qch1^2*e^2*d_(nu9,nu4)*2*i_*qch1^2*e^2*d_(nu1 0,nu2);
#procedure momentumRouting
Id p1 = p2 + p4 + -p3;
Id q4 = p4 + q5 + -q2;
Id q1 = p4 + -p3;
Id q3 = p3 + -q2;

#endprocedure
*--#]d52l2:

*--#[d53l2:
L [d53l2|o.i.2|i.3.3|4.4|o|] = 1*i_* prop(-1,0,q1)*d_(nu1,nu2)*i_* prop(-1,2,q2)*i_* prop(-1,0,q3)*d_(nu5,nu6)*i_* prop(-1,2,q4)*i_* prop(-1,0,q5)*d_(nu9,nu1 0)*i_*e*qch1*(p3(nu1)-p4(nu1))*i_*e*qch2*(q2(nu5)-p2(nu5))*2*i_*qch2^2*e^2*d_(nu9,nu2);
#procedure momentumRouting
Id q2 = p2 + q3;
Id q4 = p2 + -q5;
Id p1 = p2 + p4 + -p3;
Id q1 = p3 + -p4;

#endprocedure
*--#]d53l2:

*--#[d54l2:
L [d54l2|3.3.4.4|o.i.3|i|o|] = 1*i_* prop(-1,0,q1)*d_(nu1,nu2)*i_* prop(-1,2,q2)*i_* prop(-1,0,q3)*d_(nu5,nu6)*i_* prop(-1,2,q4)*i_* prop(-1,0,q5)*d_(nu9,nu1 0)*i_*e*qch1*(p3(nu1)-p4(nu1))*i_*e*qch2*(p1(nu5)-q2(nu5))*2*i_*qch2^2*e^2*d_(nu9,nu2);
#procedure momentumRouting
Id q2 = p2 + p4 + -p3 + -q3;
Id q4 = p2 + p4 + q5 + -p3;
Id p1 = p2 + p4 + -p3;
Id q1 = p3 + -p4;

#endprocedure
*--#]d54l2:

*--#[d55l2:
L [d55l2|o.i.2|i.3.3|4.4|o|] = 1*i_* prop(-1,0,q1)*d_(nu1,nu2)*i_* prop(-1,1,q2)*i_* prop(-1,0,q3)*d_(nu5,nu6)*i_* prop(-1,1,q4)*i_* prop(-1,0,q5)*d_(nu9,nu1 0)*i_*e*qch2*(p1(nu1)-p2(nu1))*i_*e*qch1*(q2(nu5)-p4(nu5))*2*i_*qch1^2*e^2*d_(nu9,nu2);
#procedure momentumRouting
Id q2 = p4 + q3;
Id q4 = p4 + -q5;
Id p1 = p2 + p4 + -p3;
Id q1 = p4 + -p3;

#endprocedure
*--#]d55l2:

*--#[d56l2:
L [d56l2|3.3.4.4|o.i.3|i|o|] = 1*i_* prop(-1,0,q1)*d_(nu1,nu2)*i_* prop(-1,1,q2)*i_* prop(-1,0,q3)*d_(nu5,nu6)*i_* prop(-1,1,q4)*i_* prop(-1,0,q5)*d_(nu9,nu1 0)*i_*e*qch2*(p1(nu1)-p2(nu1))*i_*e*qch1*(p3(nu5)-q2(nu5))*2*i_*qch1^2*e^2*d_(nu9,nu2);
#procedure momentumRouting
Id q2 = p3 + -q3;
Id q4 = p3 + q5;
Id p1 = p2 + p4 + -p3;
Id q1 = p4 + -p3;

#endprocedure
*--#]d56l2:

*--#[d57l2:
L [d57l2|3.4.4.4|o.i.4|o.i||] = 1*i_* prop(-1,0,q1)*d_(nu1,nu2)*i_* prop(-1,0,q2)*d_(nu3,nu4)*i_* prop(-1,1,q3)*i_* prop(-1,1,q4)*i_* prop(-1,0,q5)*d_(nu9,nu1 0)*i_*e*qch1*(p3(nu1)-p4(nu1))*i_*e*qch2*(p1(nu3)-p2(nu3))*2*i_*qch1^2*e^2*d_(nu9,nu2)*2*i_*qch1^2*e^2*d_(nu1 0,nu4);
#procedure momentumRouting
Id q2 = p4 + -p3;
Id p1 = p2 + p4 + -p3;
Id q1 = p3 + -p4;
Id q3 = p3 + q4 + -p4 + -q5;

#endprocedure
*--#]d57l2:

*--#[d58l2:
L [d58l2|3.3.3.4|o.i.3||o.i|] = 1*i_* prop(-1,0,q1)*d_(nu1,nu2)*i_* prop(-1,0,q2)*d_(nu3,nu4)*i_* prop(-1,2,q3)*i_* prop(-1,2,q4)*i_* prop(-1,0,q5)*d_(nu9,nu1 0)*i_*e*qch1*(p3(nu1)-p4(nu1))*i_*e*qch2*(p1(nu3)-p2(nu3))*2*i_*qch2^2*e^2*d_(nu9,nu2)*2*i_*qch2^2*e^2*d_(nu1 0,nu4);
#procedure momentumRouting
Id q2 = p4 + -p3;
Id p1 = p2 + p4 + -p3;
Id q1 = p3 + -p4;
Id q3 = p3 + q4 + -p4 + -q5;

#endprocedure
*--#]d58l2:

*--#[d59l2:
L [d59l2|2.3.5|3.4|5|o.i|o.i|] = 1*i_* prop(-1,0,q1)*d_(nu1,nu2)*i_* prop(-1,1,q2)*i_* prop(-1,1,q3)*i_* prop(-1,1,q4)*i_* prop(-1,0,q5)*d_(nu9,nu1 0)*i_* prop(-1,0,q6)*d_(nu1 1,nu1 2)*i_*e*qch1*(p3(nu1)-p4(nu1))*i_*e*qch1*(q3(nu2)-q2(nu2))*i_*e*qch1*(q2(nu9)-q4(nu9))*i_*e*qch1*(q4(nu1 1)-q3(nu1 1))*2*i_*qch2^2*e^2*d_(nu1 0,nu1 2);
#procedure momentumRouting
Id q2 = p3 + q4 + -p4 + -q6;
Id p1 = p2 + p4 + -p3;
Id q1 = p3 + -p4;
Id q3 = q4 + -q6;
Id q5 = p3 + -p4 + -q6;

#endprocedure
*--#]d59l2:

*--#[d60l2:
L [d60l2|3.4.5|o.i.5|4.5|o.i||] = 1*i_* prop(-1,0,q1)*d_(nu1,nu2)*i_* prop(-1,2,q2)*i_* prop(-1,2,q3)*i_* prop(-1,2,q4)*i_* prop(-1,0,q5)*d_(nu9,nu1 0)*i_* prop(-1,0,q6)*d_(nu1 1,nu1 2)*i_*e*qch1*(p3(nu1)-p4(nu1))*i_*e*qch2*(q3(nu2)-q2(nu2))*i_*e*qch2*(q2(nu9)-q4(nu9))*i_*e*qch2*(q4(nu1 1)-q3(nu1 1))*2*i_*qch2^2*e^2*d_(nu1 0,nu1 2);
#procedure momentumRouting
Id q2 = p3 + q4 + -p4 + -q6;
Id p1 = p2 + p4 + -p3;
Id q1 = p3 + -p4;
Id q3 = q4 + -q6;
Id q5 = p3 + -p4 + -q6;

#endprocedure
*--#]d60l2:

*--#[d61l2:
L [d61l2|3.4.5|o.i.5|4.5|o.i||] = 1*i_* prop(-1,0,q1)*d_(nu1,nu2)*i_* prop(-1,1,q2)*i_* prop(-1,1,q3)*i_* prop(-1,1,q4)*i_* prop(-1,0,q5)*d_(nu9,nu1 0)*i_* prop(-1,0,q6)*d_(nu1 1,nu1 2)*i_*e*qch2*(p1(nu1)-p2(nu1))*i_*e*qch1*(q3(nu2)-q2(nu2))*i_*e*qch1*(q2(nu9)-q4(nu9))*i_*e*qch1*(q4(nu1 1)-q3(nu1 1))*2*i_*qch1^2*e^2*d_(nu1 0,nu1 2);
#procedure momentumRouting
Id q2 = p4 + q4 + -p3 + -q6;
Id p1 = p2 + p4 + -p3;
Id q1 = p4 + -p3;
Id q3 = q4 + -q6;
Id q5 = p4 + -p3 + -q6;

#endprocedure
*--#]d61l2:

*--#[d62l2:
L [d62l2|2.3.5|3.4|5|o.i|o.i|] = 1*i_* prop(-1,0,q1)*d_(nu1,nu2)*i_* prop(-1,2,q2)*i_* prop(-1,2,q3)*i_* prop(-1,2,q4)*i_* prop(-1,0,q5)*d_(nu9,nu1 0)*i_* prop(-1,0,q6)*d_(nu1 1,nu1 2)*i_*e*qch2*(p1(nu1)-p2(nu1))*i_*e*qch2*(q3(nu2)-q2(nu2))*i_*e*qch2*(q2(nu9)-q4(nu9))*i_*e*qch2*(q4(nu1 1)-q3(nu1 1))*2*i_*qch1^2*e^2*d_(nu1 0,nu1 2);
#procedure momentumRouting
Id q2 = p4 + q4 + -p3 + -q6;
Id p1 = p2 + p4 + -p3;
Id q1 = p4 + -p3;
Id q3 = q4 + -q6;
Id q5 = p4 + -p3 + -q6;

#endprocedure
*--#]d62l2:

*--#[d63l2:
L [d63l2|o.2.5|o.i.4|4.5.5|i||] = 1*i_* prop(-1,1,q1)*i_* prop(-1,0,q2)*d_(nu3,nu4)*i_* prop(-1,1,q3)*i_* prop(-1,0,q4)*d_(nu7,nu8)*i_* prop(-1,1,q5)*i_* prop(-1,0,q6)*d_(nu1 1,nu1 2)*i_*e*qch1*(q1(nu3)-p4(nu3))*i_*e*qch1*(p3(nu7)-q3(nu7))*i_*e*qch1*(q5(nu1 1)-q1(nu1 1))*i_*e*qch1*(q3(nu1 2)-q5(nu1 2))*2*i_*qch2^2*e^2*d_(nu4,nu8);
#procedure momentumRouting
Id q2 = p3 + -p4 + -q4;
Id p1 = p2 + p4 + -p3;
Id q1 = p3 + -q4;
Id q3 = p3 + -q4;
Id q5 = p3 + q6 + -q4;

#endprocedure
*--#]d63l2:

*--#[d64l2:
L [d64l2|o.2.5|o.i.4|4.5.5|i||] = 1*i_* prop(-1,2,q1)*i_* prop(-1,0,q2)*d_(nu3,nu4)*i_* prop(-1,2,q3)*i_* prop(-1,0,q4)*d_(nu7,nu8)*i_* prop(-1,2,q5)*i_* prop(-1,0,q6)*d_(nu1 1,nu1 2)*i_*e*qch2*(q1(nu3)-p2(nu3))*i_*e*qch2*(p1(nu7)-q3(nu7))*i_*e*qch2*(q5(nu1 1)-q1(nu1 1))*i_*e*qch2*(q3(nu1 2)-q5(nu1 2))*2*i_*qch1^2*e^2*d_(nu4,nu8);
#procedure momentumRouting
Id q2 = p4 + -p3 + -q4;
Id p1 = p2 + p4 + -p3;
Id q1 = p2 + p4 + -p3 + -q4;
Id q3 = p2 + p4 + -p3 + -q4;
Id q5 = p2 + p4 + q6 + -p3 + -q4;

#endprocedure
*--#]d64l2:

*--#[d65l2:
L [d65l2|o.2.4|o.i.5|i.4.5|5||] = 1*i_* prop(-1,0,q1)*d_(nu1,nu2)*i_* prop(-1,1,q2)*i_* prop(-1,1,q3)*i_* prop(-1,0,q4)*d_(nu7,nu8)*i_* prop(-1,1,q5)*i_* prop(-1,0,q6)*d_(nu1 1,nu1 2)*i_*e*qch1*(q2(nu1)-p4(nu1))*i_*e*qch1*(p3(nu7)-q3(nu7))*i_*e*qch1*(q3(nu2)-q5(nu2))*i_*e*qch1*(q5(nu1 1)-q2(nu1 1))*2*i_*qch2^2*e^2*d_(nu8,nu1 2);
#procedure momentumRouting
Id q2 = p4 + q1;
Id q4 = p3 + -p4 + -q6;
Id p1 = p2 + p4 + -p3;
Id q3 = p4 + q6;
Id q5 = p4 + q1 + q6;

#endprocedure
*--#]d65l2:

*--#[d66l2:
L [d66l2|o.2.4|o.i.5|i.4.5|5||] = 1*i_* prop(-1,0,q1)*d_(nu1,nu2)*i_* prop(-1,2,q2)*i_* prop(-1,2,q3)*i_* prop(-1,0,q4)*d_(nu7,nu8)*i_* prop(-1,2,q5)*i_* prop(-1,0,q6)*d_(nu1 1,nu1 2)*i_*e*qch2*(q2(nu1)-p2(nu1))*i_*e*qch2*(p1(nu7)-q3(nu7))*i_*e*qch2*(q3(nu2)-q5(nu2))*i_*e*qch2*(q5(nu1 1)-q2(nu1 1))*2*i_*qch1^2*e^2*d_(nu8,nu1 2);
#procedure momentumRouting
Id q2 = p2 + q1;
Id q4 = p4 + -p3 + -q6;
Id p1 = p2 + p4 + -p3;
Id q3 = p2 + q6;
Id q5 = p2 + q1 + q6;

#endprocedure
*--#]d66l2:

*--#[d67l2:
L [d67l2|2.3.5|3.4|i|o.i.5|o|] = 1*i_* prop(-1,0,q1)*d_(nu1,nu2)*i_* prop(-1,1,q2)*i_* prop(-1,1,q3)*i_* prop(-1,0,q4)*d_(nu7,nu8)*i_* prop(-1,1,q5)*i_* prop(-1,0,q6)*d_(nu1 1,nu1 2)*i_*e*qch1*(p3(nu1)-q2(nu1))*i_*e*qch1*(q3(nu7)-p4(nu7))*i_*e*qch1*(q5(nu2)-q3(nu2))*i_*e*qch1*(q2(nu1 1)-q5(nu1 1))*2*i_*qch2^2*e^2*d_(nu8,nu1 2);
#procedure momentumRouting
Id q2 = p3 + -q1;
Id q4 = p3 + -p4 + -q6;
Id p1 = p2 + p4 + -p3;
Id q3 = p3 + -q6;
Id q5 = p3 + -q1 + -q6;

#endprocedure
*--#]d67l2:

*--#[d68l2:
L [d68l2|2.3.5|3.4|i|o.i.5|o|] = 1*i_* prop(-1,0,q1)*d_(nu1,nu2)*i_* prop(-1,2,q2)*i_* prop(-1,2,q3)*i_* prop(-1,0,q4)*d_(nu7,nu8)*i_* prop(-1,2,q5)*i_* prop(-1,0,q6)*d_(nu1 1,nu1 2)*i_*e*qch2*(p1(nu1)-q2(nu1))*i_*e*qch2*(q3(nu7)-p2(nu7))*i_*e*qch2*(q5(nu2)-q3(nu2))*i_*e*qch2*(q2(nu1 1)-q5(nu1 1))*2*i_*qch1^2*e^2*d_(nu8,nu1 2);
#procedure momentumRouting
Id q2 = p2 + p4 + -p3 + -q1;
Id q4 = p4 + -p3 + -q6;
Id p1 = p2 + p4 + -p3;
Id q3 = p2 + p4 + -p3 + -q6;
Id q5 = p2 + p4 + -p3 + -q1 + -q6;

#endprocedure
*--#]d68l2:

*--#[d69l2:
L [d69l2|i.2.4|3.3|5|o.5|o.i|] = 1*i_* prop(-1,1,q1)*i_* prop(-1,0,q2)*d_(nu3,nu4)*i_* prop(-1,0,q3)*d_(nu5,nu6)*i_* prop(-1,1,q4)*i_* prop(-1,1,q5)*i_* prop(-1,0,q6)*d_(nu1 1,nu1 2)*i_*e*qch1*(q1(nu3)-p4(nu3))*i_*e*qch1*(p3(nu5)-q1(nu5))*i_*e*qch1*(q5(nu4)-q4(nu4))*i_*e*qch1*(q4(nu1 1)-q5(nu1 1))*2*i_*qch2^2*e^2*d_(nu6,nu1 2);
#procedure momentumRouting
Id q2 = q6;
Id q4 = q5 + q6;
Id p1 = p2 + p4 + -p3;
Id q1 = p4 + q6;
Id q3 = p3 + -p4 + -q6;

#endprocedure
*--#]d69l2:

*--#[d70l2:
L [d70l2|o.i.3.5|o.3.4|i|5.5||] = 1*i_* prop(-1,1,q1)*i_* prop(-1,0,q2)*d_(nu3,nu4)*i_* prop(-1,0,q3)*d_(nu5,nu6)*i_* prop(-1,2,q4)*i_* prop(-1,2,q5)*i_* prop(-1,0,q6)*d_(nu1 1,nu1 2)*i_*e*qch1*(q1(nu3)-p4(nu3))*i_*e*qch1*(p3(nu5)-q1(nu5))*i_*e*qch2*(q5(nu4)-q4(nu4))*i_*e*qch2*(q4(nu1 1)-q5(nu1 1))*2*i_*qch2^2*e^2*d_(nu6,nu1 2);
#procedure momentumRouting
Id q2 = q6;
Id q4 = q5 + q6;
Id p1 = p2 + p4 + -p3;
Id q1 = p4 + q6;
Id q3 = p3 + -p4 + -q6;

#endprocedure
*--#]d70l2:

*--#[d71l2:
L [d71l2|o.i.3.5|o.3.4|i|5.5||] = 1*i_* prop(-1,2,q1)*i_* prop(-1,0,q2)*d_(nu3,nu4)*i_* prop(-1,0,q3)*d_(nu5,nu6)*i_* prop(-1,1,q4)*i_* prop(-1,1,q5)*i_* prop(-1,0,q6)*d_(nu1 1,nu1 2)*i_*e*qch2*(q1(nu3)-p2(nu3))*i_*e*qch2*(p1(nu5)-q1(nu5))*i_*e*qch1*(q5(nu4)-q4(nu4))*i_*e*qch1*(q4(nu1 1)-q5(nu1 1))*2*i_*qch1^2*e^2*d_(nu6,nu1 2);
#procedure momentumRouting
Id q2 = q6;
Id q4 = q5 + q6;
Id p1 = p2 + p4 + -p3;
Id q1 = p2 + q6;
Id q3 = p4 + -p3 + -q6;

#endprocedure
*--#]d71l2:

*--#[d72l2:
L [d72l2|i.2.4|3.3|5|o.5|o.i|] = 1*i_* prop(-1,2,q1)*i_* prop(-1,0,q2)*d_(nu3,nu4)*i_* prop(-1,0,q3)*d_(nu5,nu6)*i_* prop(-1,2,q4)*i_* prop(-1,2,q5)*i_* prop(-1,0,q6)*d_(nu1 1,nu1 2)*i_*e*qch2*(q1(nu3)-p2(nu3))*i_*e*qch2*(p1(nu5)-q1(nu5))*i_*e*qch2*(q5(nu4)-q4(nu4))*i_*e*qch2*(q4(nu1 1)-q5(nu1 1))*2*i_*qch1^2*e^2*d_(nu6,nu1 2);
#procedure momentumRouting
Id q2 = q6;
Id q4 = q5 + q6;
Id p1 = p2 + p4 + -p3;
Id q1 = p2 + q6;
Id q3 = p4 + -p3 + -q6;

#endprocedure
*--#]d72l2:

*--#[d73l2:
L [d73l2|2.2.4|5|o.4.5|i|o.i|] = 1*i_* prop(-1,1,q1)*i_* prop(-1,0,q2)*d_(nu3,nu4)*i_* prop(-1,0,q3)*d_(nu5,nu6)*i_* prop(-1,1,q4)*i_* prop(-1,1,q5)*i_* prop(-1,0,q6)*d_(nu1 1,nu1 2)*i_*e*qch1*(p3(nu3)-q1(nu3))*i_*e*qch1*(q1(nu5)-p4(nu5))*i_*e*qch1*(q5(nu4)-q4(nu4))*i_*e*qch1*(q4(nu1 1)-q5(nu1 1))*2*i_*qch2^2*e^2*d_(nu6,nu1 2);
#procedure momentumRouting
Id q2 = q6;
Id q4 = q5 + q6;
Id p1 = p2 + p4 + -p3;
Id q1 = p3 + -q6;
Id q3 = p3 + -p4 + -q6;

#endprocedure
*--#]d73l2:

*--#[d74l2:
L [d74l2|2.2.5|4|i.4.5|o.i|o|] = 1*i_* prop(-1,1,q1)*i_* prop(-1,0,q2)*d_(nu3,nu4)*i_* prop(-1,0,q3)*d_(nu5,nu6)*i_* prop(-1,2,q4)*i_* prop(-1,2,q5)*i_* prop(-1,0,q6)*d_(nu1 1,nu1 2)*i_*e*qch1*(p3(nu3)-q1(nu3))*i_*e*qch1*(q1(nu5)-p4(nu5))*i_*e*qch2*(q5(nu4)-q4(nu4))*i_*e*qch2*(q4(nu1 1)-q5(nu1 1))*2*i_*qch2^2*e^2*d_(nu6,nu1 2);
#procedure momentumRouting
Id q2 = q6;
Id q4 = q5 + q6;
Id p1 = p2 + p4 + -p3;
Id q1 = p3 + -q6;
Id q3 = p3 + -p4 + -q6;

#endprocedure
*--#]d74l2:

*--#[d75l2:
L [d75l2|2.2.5|4|i.4.5|o.i|o|] = 1*i_* prop(-1,2,q1)*i_* prop(-1,0,q2)*d_(nu3,nu4)*i_* prop(-1,0,q3)*d_(nu5,nu6)*i_* prop(-1,1,q4)*i_* prop(-1,1,q5)*i_* prop(-1,0,q6)*d_(nu1 1,nu1 2)*i_*e*qch2*(p1(nu3)-q1(nu3))*i_*e*qch2*(q1(nu5)-p2(nu5))*i_*e*qch1*(q5(nu4)-q4(nu4))*i_*e*qch1*(q4(nu1 1)-q5(nu1 1))*2*i_*qch1^2*e^2*d_(nu6,nu1 2);
#procedure momentumRouting
Id q2 = q6;
Id q4 = q5 + q6;
Id p1 = p2 + p4 + -p3;
Id q1 = p2 + p4 + -p3 + -q6;
Id q3 = p4 + -p3 + -q6;

#endprocedure
*--#]d75l2:

*--#[d76l2:
L [d76l2|2.2.4|5|o.4.5|i|o.i|] = 1*i_* prop(-1,2,q1)*i_* prop(-1,0,q2)*d_(nu3,nu4)*i_* prop(-1,0,q3)*d_(nu5,nu6)*i_* prop(-1,2,q4)*i_* prop(-1,2,q5)*i_* prop(-1,0,q6)*d_(nu1 1,nu1 2)*i_*e*qch2*(p1(nu3)-q1(nu3))*i_*e*qch2*(q1(nu5)-p2(nu5))*i_*e*qch2*(q5(nu4)-q4(nu4))*i_*e*qch2*(q4(nu1 1)-q5(nu1 1))*2*i_*qch1^2*e^2*d_(nu6,nu1 2);
#procedure momentumRouting
Id q2 = q6;
Id q4 = q5 + q6;
Id p1 = p2 + p4 + -p3;
Id q1 = p2 + p4 + -p3 + -q6;
Id q3 = p4 + -p3 + -q6;

#endprocedure
*--#]d76l2:

*--#[d77l2:
L [d77l2|o.i.2.4|4.5|o.4.5||i|] = 1*i_* prop(-1,0,q1)*d_(nu1,nu2)*i_* prop(-1,1,q2)*i_* prop(-1,1,q3)*i_* prop(-1,1,q4)*i_* prop(-1,0,q5)*d_(nu9,nu1 0)*i_* prop(-1,0,q6)*d_(nu1 1,nu1 2)*i_*e*qch1*(q2(nu1)-p4(nu1))*i_*e*qch1*(p3(nu2)-q3(nu2))*i_*e*qch1*(q4(nu9)-q2(nu9))*i_*e*qch1*(q3(nu1 1)-q4(nu1 1))*2*i_*qch2^2*e^2*d_(nu1 0,nu1 2);
#procedure momentumRouting
Id q2 = p4 + q1;
Id q4 = p3 + q1 + -q6;
Id p1 = p2 + p4 + -p3;
Id q3 = p3 + q1;
Id q5 = p3 + -p4 + -q6;

#endprocedure
*--#]d77l2:

*--#[d78l2:
L [d78l2|o.i.2.4|4.5|o.4.5||i|] = 1*i_* prop(-1,0,q1)*d_(nu1,nu2)*i_* prop(-1,2,q2)*i_* prop(-1,2,q3)*i_* prop(-1,2,q4)*i_* prop(-1,0,q5)*d_(nu9,nu1 0)*i_* prop(-1,0,q6)*d_(nu1 1,nu1 2)*i_*e*qch2*(q2(nu1)-p2(nu1))*i_*e*qch2*(p1(nu2)-q3(nu2))*i_*e*qch2*(q4(nu9)-q2(nu9))*i_*e*qch2*(q3(nu1 1)-q4(nu1 1))*2*i_*qch1^2*e^2*d_(nu1 0,nu1 2);
#procedure momentumRouting
Id q2 = p2 + q1;
Id q4 = p2 + p4 + q1 + -p3 + -q6;
Id p1 = p2 + p4 + -p3;
Id q3 = p2 + p4 + q1 + -p3;
Id q5 = p4 + -p3 + -q6;

#endprocedure
*--#]d78l2:

*--#[d79l2:
L [d79l2|i.2.5|o.3.4|o.i|5.5||] = 1*i_* prop(-1,0,q1)*d_(nu1,nu2)*i_* prop(-1,0,q2)*d_(nu3,nu4)*i_* prop(-1,2,q3)*i_* prop(-1,1,q4)*i_* prop(-1,1,q5)*i_* prop(-1,0,q6)*d_(nu1 1,nu1 2)*i_*e*qch1*(p3(nu1)-p4(nu1))*i_*e*qch2*(q3(nu3)-p2(nu3))*i_*e*qch1*(q5(nu4)-q4(nu4))*i_*e*qch1*(q4(nu1 1)-q5(nu1 1))*2*i_*qch2^2*e^2*d_(nu1 2,nu2);
#procedure momentumRouting
Id q2 = q6;
Id q4 = q5 + q6;
Id p1 = p2 + p4 + -p3;
Id q1 = p3 + -p4;
Id q3 = p2 + q6;

#endprocedure
*--#]d79l2:

*--#[d80l2:
L [d80l2|4.5.5|o.3.4.5|o.i|i||] = 1*i_* prop(-1,0,q1)*d_(nu1,nu2)*i_* prop(-1,0,q2)*d_(nu3,nu4)*i_* prop(-1,2,q3)*i_* prop(-1,2,q4)*i_* prop(-1,2,q5)*i_* prop(-1,0,q6)*d_(nu1 1,nu1 2)*i_*e*qch1*(p3(nu1)-p4(nu1))*i_*e*qch2*(q3(nu3)-p2(nu3))*i_*e*qch2*(q5(nu4)-q4(nu4))*i_*e*qch2*(q4(nu1 1)-q5(nu1 1))*2*i_*qch2^2*e^2*d_(nu1 2,nu2);
#procedure momentumRouting
Id q2 = q6;
Id q4 = q5 + q6;
Id p1 = p2 + p4 + -p3;
Id q1 = p3 + -p4;
Id q3 = p2 + q6;

#endprocedure
*--#]d80l2:

*--#[d81l2:
L [d81l2|o.i.3|o.3.5|i.4|5.5||] = 1*i_* prop(-1,0,q1)*d_(nu1,nu2)*i_* prop(-1,2,q2)*i_* prop(-1,0,q3)*d_(nu5,nu6)*i_* prop(-1,2,q4)*i_* prop(-1,0,q5)*d_(nu9,nu1 0)*i_* prop(-1,2,q6)*i_*e*qch1*(p3(nu1)-p4(nu1))*i_*e*qch2*(q2(nu5)-p2(nu5))*i_*e*qch2*(q4(nu9)-q2(nu9))*i_*e*qch2*(q6(nu1 0)-q4(nu1 0))*2*i_*qch2^2*e^2*d_(nu2,nu6);
#procedure momentumRouting
Id q2 = p2 + q3;
Id q4 = p2 + q3 + q5;
Id p1 = p2 + p4 + -p3;
Id q1 = p3 + -p4;
Id q6 = p2 + q3;

#endprocedure
*--#]d81l2:

*--#[d82l2:
L [d82l2|o.3.4|3.4.4|i.5||o.i|] = 1*i_* prop(-1,0,q1)*d_(nu1,nu2)*i_* prop(-1,0,q2)*d_(nu3,nu4)*i_* prop(-1,2,q3)*i_* prop(-1,1,q4)*i_* prop(-1,1,q5)*i_* prop(-1,0,q6)*d_(nu1 1,nu1 2)*i_*e*qch1*(p3(nu1)-p4(nu1))*i_*e*qch2*(p1(nu3)-q3(nu3))*i_*e*qch1*(q5(nu4)-q4(nu4))*i_*e*qch1*(q4(nu1 1)-q5(nu1 1))*2*i_*qch2^2*e^2*d_(nu1 2,nu2);
#procedure momentumRouting
Id q2 = q6;
Id q4 = q5 + q6;
Id p1 = p2 + p4 + -p3;
Id q1 = p3 + -p4;
Id q3 = p2 + p4 + -p3 + -q6;

#endprocedure
*--#]d82l2:

*--#[d83l2:
L [d83l2|o.i.3|4.5.5|i.4.5|o||] = 1*i_* prop(-1,0,q1)*d_(nu1,nu2)*i_* prop(-1,0,q2)*d_(nu3,nu4)*i_* prop(-1,2,q3)*i_* prop(-1,2,q4)*i_* prop(-1,2,q5)*i_* prop(-1,0,q6)*d_(nu1 1,nu1 2)*i_*e*qch1*(p3(nu1)-p4(nu1))*i_*e*qch2*(p1(nu3)-q3(nu3))*i_*e*qch2*(q5(nu4)-q4(nu4))*i_*e*qch2*(q4(nu1 1)-q5(nu1 1))*2*i_*qch2^2*e^2*d_(nu1 2,nu2);
#procedure momentumRouting
Id q2 = q6;
Id q4 = q5 + q6;
Id p1 = p2 + p4 + -p3;
Id q1 = p3 + -p4;
Id q3 = p2 + p4 + -p3 + -q6;

#endprocedure
*--#]d83l2:

*--#[d84l2:
L [d84l2|o.i.2|o.4.5|4.5.5|i||] = 1*i_* prop(-1,0,q1)*d_(nu1,nu2)*i_* prop(-1,2,q2)*i_* prop(-1,0,q3)*d_(nu5,nu6)*i_* prop(-1,2,q4)*i_* prop(-1,0,q5)*d_(nu9,nu1 0)*i_* prop(-1,2,q6)*i_*e*qch1*(p3(nu1)-p4(nu1))*i_*e*qch2*(p1(nu5)-q2(nu5))*i_*e*qch2*(q2(nu9)-q4(nu9))*i_*e*qch2*(q4(nu1 0)-q6(nu1 0))*2*i_*qch2^2*e^2*d_(nu2,nu6);
#procedure momentumRouting
Id q2 = p2 + p4 + -p3 + -q3;
Id q4 = p2 + p4 + -p3 + -q3 + -q5;
Id p1 = p2 + p4 + -p3;
Id q1 = p3 + -p4;
Id q6 = p2 + p4 + -p3 + -q3;

#endprocedure
*--#]d84l2:

*--#[d85l2:
L [d85l2|4.5.5|o.3.4.5|o.i|i||] = 1*i_* prop(-1,0,q1)*d_(nu1,nu2)*i_* prop(-1,0,q2)*d_(nu3,nu4)*i_* prop(-1,1,q3)*i_* prop(-1,1,q4)*i_* prop(-1,1,q5)*i_* prop(-1,0,q6)*d_(nu1 1,nu1 2)*i_*e*qch2*(p1(nu1)-p2(nu1))*i_*e*qch1*(q3(nu3)-p4(nu3))*i_*e*qch1*(q5(nu4)-q4(nu4))*i_*e*qch1*(q4(nu1 1)-q5(nu1 1))*2*i_*qch1^2*e^2*d_(nu1 2,nu2);
#procedure momentumRouting
Id q2 = q6;
Id q4 = q5 + q6;
Id p1 = p2 + p4 + -p3;
Id q1 = p4 + -p3;
Id q3 = p4 + q6;

#endprocedure
*--#]d85l2:

*--#[d86l2:
L [d86l2|i.2.5|o.3.4|o.i|5.5||] = 1*i_* prop(-1,0,q1)*d_(nu1,nu2)*i_* prop(-1,0,q2)*d_(nu3,nu4)*i_* prop(-1,1,q3)*i_* prop(-1,2,q4)*i_* prop(-1,2,q5)*i_* prop(-1,0,q6)*d_(nu1 1,nu1 2)*i_*e*qch2*(p1(nu1)-p2(nu1))*i_*e*qch1*(q3(nu3)-p4(nu3))*i_*e*qch2*(q5(nu4)-q4(nu4))*i_*e*qch2*(q4(nu1 1)-q5(nu1 1))*2*i_*qch1^2*e^2*d_(nu1 2,nu2);
#procedure momentumRouting
Id q2 = q6;
Id q4 = q5 + q6;
Id p1 = p2 + p4 + -p3;
Id q1 = p4 + -p3;
Id q3 = p4 + q6;

#endprocedure
*--#]d86l2:

*--#[d87l2:
L [d87l2|o.i.3|o.3.5|i.4|5.5||] = 1*i_* prop(-1,0,q1)*d_(nu1,nu2)*i_* prop(-1,1,q2)*i_* prop(-1,0,q3)*d_(nu5,nu6)*i_* prop(-1,1,q4)*i_* prop(-1,0,q5)*d_(nu9,nu1 0)*i_* prop(-1,1,q6)*i_*e*qch2*(p1(nu1)-p2(nu1))*i_*e*qch1*(q2(nu5)-p4(nu5))*i_*e*qch1*(q4(nu9)-q2(nu9))*i_*e*qch1*(q6(nu1 0)-q4(nu1 0))*2*i_*qch1^2*e^2*d_(nu2,nu6);
#procedure momentumRouting
Id q2 = p4 + q3;
Id q4 = p4 + q3 + q5;
Id p1 = p2 + p4 + -p3;
Id q1 = p4 + -p3;
Id q6 = p4 + q3;

#endprocedure
*--#]d87l2:

*--#[d88l2:
L [d88l2|o.i.3|4.5.5|i.4.5|o||] = 1*i_* prop(-1,0,q1)*d_(nu1,nu2)*i_* prop(-1,0,q2)*d_(nu3,nu4)*i_* prop(-1,1,q3)*i_* prop(-1,1,q4)*i_* prop(-1,1,q5)*i_* prop(-1,0,q6)*d_(nu1 1,nu1 2)*i_*e*qch2*(p1(nu1)-p2(nu1))*i_*e*qch1*(p3(nu3)-q3(nu3))*i_*e*qch1*(q5(nu4)-q4(nu4))*i_*e*qch1*(q4(nu1 1)-q5(nu1 1))*2*i_*qch1^2*e^2*d_(nu1 2,nu2);
#procedure momentumRouting
Id q2 = q6;
Id q4 = q5 + q6;
Id p1 = p2 + p4 + -p3;
Id q1 = p4 + -p3;
Id q3 = p3 + -q6;

#endprocedure
*--#]d88l2:

*--#[d89l2:
L [d89l2|o.3.4|3.4.4|i.5||o.i|] = 1*i_* prop(-1,0,q1)*d_(nu1,nu2)*i_* prop(-1,0,q2)*d_(nu3,nu4)*i_* prop(-1,1,q3)*i_* prop(-1,2,q4)*i_* prop(-1,2,q5)*i_* prop(-1,0,q6)*d_(nu1 1,nu1 2)*i_*e*qch2*(p1(nu1)-p2(nu1))*i_*e*qch1*(p3(nu3)-q3(nu3))*i_*e*qch2*(q5(nu4)-q4(nu4))*i_*e*qch2*(q4(nu1 1)-q5(nu1 1))*2*i_*qch1^2*e^2*d_(nu1 2,nu2);
#procedure momentumRouting
Id q2 = q6;
Id q4 = q5 + q6;
Id p1 = p2 + p4 + -p3;
Id q1 = p4 + -p3;
Id q3 = p3 + -q6;

#endprocedure
*--#]d89l2:

*--#[d90l2:
L [d90l2|o.i.2|o.4.5|4.5.5|i||] = 1*i_* prop(-1,0,q1)*d_(nu1,nu2)*i_* prop(-1,1,q2)*i_* prop(-1,0,q3)*d_(nu5,nu6)*i_* prop(-1,1,q4)*i_* prop(-1,0,q5)*d_(nu9,nu1 0)*i_* prop(-1,1,q6)*i_*e*qch2*(p1(nu1)-p2(nu1))*i_*e*qch1*(p3(nu5)-q2(nu5))*i_*e*qch1*(q2(nu9)-q4(nu9))*i_*e*qch1*(q4(nu1 0)-q6(nu1 0))*2*i_*qch1^2*e^2*d_(nu2,nu6);
#procedure momentumRouting
Id q2 = p3 + -q3;
Id q4 = p3 + -q3 + -q5;
Id p1 = p2 + p4 + -p3;
Id q1 = p4 + -p3;
Id q6 = p3 + -q3;

#endprocedure
*--#]d90l2:

*--#[d91l2:
L [d91l2|o.i.2|i.3.5|4.5|o.5||] = 1*i_* prop(-1,0,q1)*d_(nu1,nu2)*i_* prop(-1,2,q2)*i_* prop(-1,0,q3)*d_(nu5,nu6)*i_* prop(-1,2,q4)*i_* prop(-1,0,q5)*d_(nu9,nu1 0)*i_* prop(-1,2,q6)*i_*e*qch1*(p3(nu1)-p4(nu1))*i_*e*qch2*(q2(nu5)-p2(nu5))*i_*e*qch2*(q4(nu9)-q2(nu9))*i_*e*qch2*(q6(nu6)-q4(nu6))*2*i_*qch2^2*e^2*d_(nu2,nu1 0);
#procedure momentumRouting
Id q2 = p2 + q3;
Id q4 = p2 + q3 + q5;
Id p1 = p2 + p4 + -p3;
Id q1 = p3 + -p4;
Id q6 = p2 + q5;

#endprocedure
*--#]d91l2:

*--#[d92l2:
L [d92l2|o.i.5|3.4.5|4.5|o|i|] = 1*i_* prop(-1,0,q1)*d_(nu1,nu2)*i_* prop(-1,2,q2)*i_* prop(-1,0,q3)*d_(nu5,nu6)*i_* prop(-1,2,q4)*i_* prop(-1,0,q5)*d_(nu9,nu1 0)*i_* prop(-1,2,q6)*i_*e*qch1*(p3(nu1)-p4(nu1))*i_*e*qch2*(p1(nu5)-q2(nu5))*i_*e*qch2*(q2(nu9)-q4(nu9))*i_*e*qch2*(q4(nu6)-q6(nu6))*2*i_*qch2^2*e^2*d_(nu2,nu1 0);
#procedure momentumRouting
Id q2 = p2 + p4 + -p3 + -q3;
Id q4 = p2 + p4 + -p3 + -q3 + -q5;
Id p1 = p2 + p4 + -p3;
Id q1 = p3 + -p4;
Id q6 = p2 + p4 + -p3 + -q5;

#endprocedure
*--#]d92l2:

*--#[d93l2:
L [d93l2|o.i.2|i.3.5|4.5|o.5||] = 1*i_* prop(-1,0,q1)*d_(nu1,nu2)*i_* prop(-1,1,q2)*i_* prop(-1,0,q3)*d_(nu5,nu6)*i_* prop(-1,1,q4)*i_* prop(-1,0,q5)*d_(nu9,nu1 0)*i_* prop(-1,1,q6)*i_*e*qch2*(p1(nu1)-p2(nu1))*i_*e*qch1*(q2(nu5)-p4(nu5))*i_*e*qch1*(q4(nu9)-q2(nu9))*i_*e*qch1*(q6(nu6)-q4(nu6))*2*i_*qch1^2*e^2*d_(nu2,nu1 0);
#procedure momentumRouting
Id q2 = p4 + q3;
Id q4 = p4 + q3 + q5;
Id p1 = p2 + p4 + -p3;
Id q1 = p4 + -p3;
Id q6 = p4 + q5;

#endprocedure
*--#]d93l2:

*--#[d94l2:
L [d94l2|o.i.5|3.4.5|4.5|o|i|] = 1*i_* prop(-1,0,q1)*d_(nu1,nu2)*i_* prop(-1,1,q2)*i_* prop(-1,0,q3)*d_(nu5,nu6)*i_* prop(-1,1,q4)*i_* prop(-1,0,q5)*d_(nu9,nu1 0)*i_* prop(-1,1,q6)*i_*e*qch2*(p1(nu1)-p2(nu1))*i_*e*qch1*(p3(nu5)-q2(nu5))*i_*e*qch1*(q2(nu9)-q4(nu9))*i_*e*qch1*(q4(nu6)-q6(nu6))*2*i_*qch1^2*e^2*d_(nu2,nu1 0);
#procedure momentumRouting
Id q2 = p3 + -q3;
Id q4 = p3 + -q3 + -q5;
Id p1 = p2 + p4 + -p3;
Id q1 = p4 + -p3;
Id q6 = p3 + -q5;

#endprocedure
*--#]d94l2:

*--#[d95l2:
L [d95l2|2.2.5|3|o.4.4|i|o.i|] = 1*i_* prop(-1,0,q1)*d_(nu1,nu2)*i_* prop(-1,2,q2)*i_* prop(-1,0,q3)*d_(nu5,nu6)*i_* prop(-1,1,q4)*i_* prop(-1,1,q5)*i_* prop(-1,0,q6)*d_(nu1 1,nu1 2)*i_*e*qch1*(p3(nu1)-p4(nu1))*i_*e*qch2*(q2(nu5)-p2(nu5))*i_*e*qch1*(q5(nu2)-q4(nu2))*i_*e*qch1*(q4(nu1 1)-q5(nu1 1));
#procedure momentumRouting
Id q2 = p2 + q3;
Id q4 = p3 + q5 + -p4;
Id p1 = p2 + p4 + -p3;
Id q1 = p3 + -p4;
Id q6 = p3 + -p4;

#endprocedure
*--#]d95l2:

*--#[d96l2:
L [d96l2|i.3.4.4|o.i.5|5.5|o||] = 1*i_* prop(-1,0,q1)*d_(nu1,nu2)*i_* prop(-1,2,q2)*i_* prop(-1,0,q3)*d_(nu5,nu6)*i_* prop(-1,2,q4)*i_* prop(-1,2,q5)*i_* prop(-1,0,q6)*d_(nu1 1,nu1 2)*i_*e*qch1*(p3(nu1)-p4(nu1))*i_*e*qch2*(q2(nu5)-p2(nu5))*i_*e*qch2*(q5(nu2)-q4(nu2))*i_*e*qch2*(q4(nu1 1)-q5(nu1 1));
#procedure momentumRouting
Id q2 = p2 + q3;
Id q4 = p3 + q5 + -p4;
Id p1 = p2 + p4 + -p3;
Id q1 = p3 + -p4;
Id q6 = p3 + -p4;

#endprocedure
*--#]d96l2:

*--#[d97l2:
L [d97l2|i.3.3|o.i.5|o.4|5.5||] = 1*i_* prop(-1,0,q1)*d_(nu1,nu2)*i_* prop(-1,2,q2)*i_* prop(-1,0,q3)*d_(nu5,nu6)*i_* prop(-1,1,q4)*i_* prop(-1,1,q5)*i_* prop(-1,0,q6)*d_(nu1 1,nu1 2)*i_*e*qch1*(p3(nu1)-p4(nu1))*i_*e*qch2*(p1(nu5)-q2(nu5))*i_*e*qch1*(q5(nu2)-q4(nu2))*i_*e*qch1*(q4(nu1 1)-q5(nu1 1));
#procedure momentumRouting
Id q2 = p2 + p4 + -p3 + -q3;
Id q4 = p3 + q5 + -p4;
Id p1 = p2 + p4 + -p3;
Id q1 = p3 + -p4;
Id q6 = p3 + -p4;

#endprocedure
*--#]d97l2:

*--#[d98l2:
L [d98l2|o.4.4|o.i.3|5.5|i.5||] = 1*i_* prop(-1,0,q1)*d_(nu1,nu2)*i_* prop(-1,2,q2)*i_* prop(-1,0,q3)*d_(nu5,nu6)*i_* prop(-1,2,q4)*i_* prop(-1,2,q5)*i_* prop(-1,0,q6)*d_(nu1 1,nu1 2)*i_*e*qch1*(p3(nu1)-p4(nu1))*i_*e*qch2*(p1(nu5)-q2(nu5))*i_*e*qch2*(q5(nu2)-q4(nu2))*i_*e*qch2*(q4(nu1 1)-q5(nu1 1));
#procedure momentumRouting
Id q2 = p2 + p4 + -p3 + -q3;
Id q4 = p3 + q5 + -p4;
Id p1 = p2 + p4 + -p3;
Id q1 = p3 + -p4;
Id q6 = p3 + -p4;

#endprocedure
*--#]d98l2:

*--#[d99l2:
L [d99l2|i.3.4.4|o.i.5|5.5|o||] = 1*i_* prop(-1,0,q1)*d_(nu1,nu2)*i_* prop(-1,1,q2)*i_* prop(-1,0,q3)*d_(nu5,nu6)*i_* prop(-1,1,q4)*i_* prop(-1,1,q5)*i_* prop(-1,0,q6)*d_(nu1 1,nu1 2)*i_*e*qch2*(p1(nu1)-p2(nu1))*i_*e*qch1*(q2(nu5)-p4(nu5))*i_*e*qch1*(q5(nu2)-q4(nu2))*i_*e*qch1*(q4(nu1 1)-q5(nu1 1));
#procedure momentumRouting
Id q2 = p4 + q3;
Id q4 = p4 + q5 + -p3;
Id p1 = p2 + p4 + -p3;
Id q1 = p4 + -p3;
Id q6 = p4 + -p3;

#endprocedure
*--#]d99l2:

*--#[d100l2:
L [d100l2|2.2.5|3|o.4.4|i|o.i|] = 1*i_* prop(-1,0,q1)*d_(nu1,nu2)*i_* prop(-1,1,q2)*i_* prop(-1,0,q3)*d_(nu5,nu6)*i_* prop(-1,2,q4)*i_* prop(-1,2,q5)*i_* prop(-1,0,q6)*d_(nu1 1,nu1 2)*i_*e*qch2*(p1(nu1)-p2(nu1))*i_*e*qch1*(q2(nu5)-p4(nu5))*i_*e*qch2*(q5(nu2)-q4(nu2))*i_*e*qch2*(q4(nu1 1)-q5(nu1 1));
#procedure momentumRouting
Id q2 = p4 + q3;
Id q4 = p4 + q5 + -p3;
Id p1 = p2 + p4 + -p3;
Id q1 = p4 + -p3;
Id q6 = p4 + -p3;

#endprocedure
*--#]d100l2:

*--#[d101l2:
L [d101l2|o.4.4|o.i.3|5.5|i.5||] = 1*i_* prop(-1,0,q1)*d_(nu1,nu2)*i_* prop(-1,1,q2)*i_* prop(-1,0,q3)*d_(nu5,nu6)*i_* prop(-1,1,q4)*i_* prop(-1,1,q5)*i_* prop(-1,0,q6)*d_(nu1 1,nu1 2)*i_*e*qch2*(p1(nu1)-p2(nu1))*i_*e*qch1*(p3(nu5)-q2(nu5))*i_*e*qch1*(q5(nu2)-q4(nu2))*i_*e*qch1*(q4(nu1 1)-q5(nu1 1));
#procedure momentumRouting
Id q2 = p3 + -q3;
Id q4 = p4 + q5 + -p3;
Id p1 = p2 + p4 + -p3;
Id q1 = p4 + -p3;
Id q6 = p4 + -p3;

#endprocedure
*--#]d101l2:

*--#[d102l2:
L [d102l2|i.3.3|o.i.5|o.4|5.5||] = 1*i_* prop(-1,0,q1)*d_(nu1,nu2)*i_* prop(-1,1,q2)*i_* prop(-1,0,q3)*d_(nu5,nu6)*i_* prop(-1,2,q4)*i_* prop(-1,2,q5)*i_* prop(-1,0,q6)*d_(nu1 1,nu1 2)*i_*e*qch2*(p1(nu1)-p2(nu1))*i_*e*qch1*(p3(nu5)-q2(nu5))*i_*e*qch2*(q5(nu2)-q4(nu2))*i_*e*qch2*(q4(nu1 1)-q5(nu1 1));
#procedure momentumRouting
Id q2 = p3 + -q3;
Id q4 = p4 + q5 + -p3;
Id p1 = p2 + p4 + -p3;
Id q1 = p4 + -p3;
Id q6 = p4 + -p3;

#endprocedure
*--#]d102l2:

*--#[d103l2:
L [d103l2|o.i.2|4.5|o.4.5|i.5||] = 1*i_* prop(-1,0,q1)*d_(nu1,nu2)*i_* prop(-1,2,q2)*i_* prop(-1,0,q3)*d_(nu5,nu6)*i_* prop(-1,2,q4)*i_* prop(-1,2,q5)*i_* prop(-1,0,q6)*d_(nu1 1,nu1 2)*i_*e*qch1*(p3(nu1)-p4(nu1))*i_*e*qch2*(q2(nu5)-p2(nu5))*i_*e*qch2*(q5(nu2)-q4(nu2))*i_*e*qch2*(q4(nu1 1)-q2(nu1 1))*2*i_*qch2^2*e^2*d_(nu1 2,nu6);
#procedure momentumRouting
Id q2 = p2 + q3;
Id q4 = p2 + q3 + q6;
Id p1 = p2 + p4 + -p3;
Id q1 = p3 + -p4;
Id q5 = p2 + p4 + q3 + q6 + -p3;

#endprocedure
*--#]d103l2:

*--#[d104l2:
L [d104l2|o.i.4|o.3.4.5|i.5|5||] = 1*i_* prop(-1,0,q1)*d_(nu1,nu2)*i_* prop(-1,2,q2)*i_* prop(-1,0,q3)*d_(nu5,nu6)*i_* prop(-1,2,q4)*i_* prop(-1,2,q5)*i_* prop(-1,0,q6)*d_(nu1 1,nu1 2)*i_*e*qch1*(p3(nu1)-p4(nu1))*i_*e*qch2*(p1(nu5)-q2(nu5))*i_*e*qch2*(q4(nu2)-q5(nu2))*i_*e*qch2*(q2(nu1 1)-q4(nu1 1))*2*i_*qch2^2*e^2*d_(nu1 2,nu6);
#procedure momentumRouting
Id q2 = p2 + p4 + -p3 + -q3;
Id q4 = p2 + p4 + -p3 + -q3 + -q6;
Id p1 = p2 + p4 + -p3;
Id q1 = p3 + -p4;
Id q5 = p2 + -q3 + -q6;

#endprocedure
*--#]d104l2:

*--#[d105l2:
L [d105l2|o.i.2|4.5|o.4.5|i.5||] = 1*i_* prop(-1,0,q1)*d_(nu1,nu2)*i_* prop(-1,1,q2)*i_* prop(-1,0,q3)*d_(nu5,nu6)*i_* prop(-1,1,q4)*i_* prop(-1,1,q5)*i_* prop(-1,0,q6)*d_(nu1 1,nu1 2)*i_*e*qch2*(p1(nu1)-p2(nu1))*i_*e*qch1*(q2(nu5)-p4(nu5))*i_*e*qch1*(q5(nu2)-q4(nu2))*i_*e*qch1*(q4(nu1 1)-q2(nu1 1))*2*i_*qch1^2*e^2*d_(nu1 2,nu6);
#procedure momentumRouting
Id q2 = p4 + q3;
Id q4 = p4 + q3 + q6;
Id p1 = p2 + p4 + -p3;
Id q1 = p4 + -p3;
Id q5 = p3 + q3 + q6;

#endprocedure
*--#]d105l2:

*--#[d106l2:
L [d106l2|o.i.4|o.3.4.5|i.5|5||] = 1*i_* prop(-1,0,q1)*d_(nu1,nu2)*i_* prop(-1,1,q2)*i_* prop(-1,0,q3)*d_(nu5,nu6)*i_* prop(-1,1,q4)*i_* prop(-1,1,q5)*i_* prop(-1,0,q6)*d_(nu1 1,nu1 2)*i_*e*qch2*(p1(nu1)-p2(nu1))*i_*e*qch1*(p3(nu5)-q2(nu5))*i_*e*qch1*(q4(nu2)-q5(nu2))*i_*e*qch1*(q2(nu1 1)-q4(nu1 1))*2*i_*qch1^2*e^2*d_(nu1 2,nu6);
#procedure momentumRouting
Id q2 = p3 + -q3;
Id q4 = p3 + -q3 + -q6;
Id p1 = p2 + p4 + -p3;
Id q1 = p4 + -p3;
Id q5 = p4 + -q3 + -q6;

#endprocedure
*--#]d106l2:

*--#[d107l2:
L [d107l2|o.2.5|3.4|5.5|o.i|i|] = 1*i_* prop(-1,0,q1)*d_(nu1,nu2)*i_* prop(-1,2,q2)*i_* prop(-1,0,q3)*d_(nu5,nu6)*i_* prop(-1,2,q4)*i_* prop(-1,2,q5)*i_* prop(-1,0,q6)*d_(nu1 1,nu1 2)*i_*e*qch1*(p3(nu1)-p4(nu1))*i_*e*qch2*(q2(nu5)-p2(nu5))*i_*e*qch2*(q4(nu2)-q2(nu2))*i_*e*qch2*(q5(nu1 1)-q4(nu1 1))*2*i_*qch2^2*e^2*d_(nu1 2,nu6);
#procedure momentumRouting
Id q2 = p2 + q3;
Id q4 = p2 + p4 + q3 + -p3;
Id p1 = p2 + p4 + -p3;
Id q1 = p3 + -p4;
Id q5 = p2 + p4 + q3 + q6 + -p3;

#endprocedure
*--#]d107l2:

*--#[d108l2:
L [d108l2|i.3.5|o.i.5|o.4.4|5||] = 1*i_* prop(-1,0,q1)*d_(nu1,nu2)*i_* prop(-1,2,q2)*i_* prop(-1,0,q3)*d_(nu5,nu6)*i_* prop(-1,2,q4)*i_* prop(-1,2,q5)*i_* prop(-1,0,q6)*d_(nu1 1,nu1 2)*i_*e*qch1*(p3(nu1)-p4(nu1))*i_*e*qch2*(p1(nu5)-q2(nu5))*i_*e*qch2*(q2(nu2)-q4(nu2))*i_*e*qch2*(q4(nu1 1)-q5(nu1 1))*2*i_*qch2^2*e^2*d_(nu1 2,nu6);
#procedure momentumRouting
Id q2 = p2 + p4 + -p3 + -q3;
Id q4 = p2 + -q3;
Id p1 = p2 + p4 + -p3;
Id q1 = p3 + -p4;
Id q5 = p2 + -q3 + -q6;

#endprocedure
*--#]d108l2:

*--#[d109l2:
L [d109l2|o.2.5|3.4|5.5|o.i|i|] = 1*i_* prop(-1,0,q1)*d_(nu1,nu2)*i_* prop(-1,1,q2)*i_* prop(-1,0,q3)*d_(nu5,nu6)*i_* prop(-1,1,q4)*i_* prop(-1,1,q5)*i_* prop(-1,0,q6)*d_(nu1 1,nu1 2)*i_*e*qch2*(p1(nu1)-p2(nu1))*i_*e*qch1*(q2(nu5)-p4(nu5))*i_*e*qch1*(q4(nu2)-q2(nu2))*i_*e*qch1*(q5(nu1 1)-q4(nu1 1))*2*i_*qch1^2*e^2*d_(nu1 2,nu6);
#procedure momentumRouting
Id q2 = p4 + q3;
Id q4 = p3 + q3;
Id p1 = p2 + p4 + -p3;
Id q1 = p4 + -p3;
Id q5 = p3 + q3 + q6;

#endprocedure
*--#]d109l2:

*--#[d110l2:
L [d110l2|i.3.5|o.i.5|o.4.4|5||] = 1*i_* prop(-1,0,q1)*d_(nu1,nu2)*i_* prop(-1,1,q2)*i_* prop(-1,0,q3)*d_(nu5,nu6)*i_* prop(-1,1,q4)*i_* prop(-1,1,q5)*i_* prop(-1,0,q6)*d_(nu1 1,nu1 2)*i_*e*qch2*(p1(nu1)-p2(nu1))*i_*e*qch1*(p3(nu5)-q2(nu5))*i_*e*qch1*(q2(nu2)-q4(nu2))*i_*e*qch1*(q4(nu1 1)-q5(nu1 1))*2*i_*qch1^2*e^2*d_(nu1 2,nu6);
#procedure momentumRouting
Id q2 = p3 + -q3;
Id q4 = p4 + -q3;
Id p1 = p2 + p4 + -p3;
Id q1 = p4 + -p3;
Id q5 = p4 + -q3 + -q6;

#endprocedure
*--#]d110l2:

*--#[d111l2:
L [d111l2|o.4.5|o.4.5|i.4.5|i||] = 1*i_* prop(-1,1,q1)*i_* prop(-1,0,q2)*d_(nu3,nu4)*i_* prop(-1,0,q3)*d_(nu5,nu6)*i_* prop(-1,2,q4)*i_* prop(-1,1,q5)*i_* prop(-1,0,q6)*d_(nu1 1,nu1 2)*i_*e*qch1*(q1(nu3)-p4(nu3))*i_*e*qch2*(q4(nu5)-p2(nu5))*i_*e*qch1*(p3(nu1 1)-q5(nu1 1))*i_*e*qch1*(q5(nu6)-q1(nu6))*2*i_*qch2^2*e^2*d_(nu1 2,nu4);
#procedure momentumRouting
Id q2 = p3 + q3 + -p4 + -q6;
Id q4 = p2 + q3;
Id p1 = p2 + p4 + -p3;
Id q1 = p3 + q3 + -q6;
Id q5 = p3 + -q6;

#endprocedure
*--#]d111l2:

*--#[d112l2:
L [d112l2|o.4.5|o.4.5|i.4.5|i||] = 1*i_* prop(-1,0,q1)*d_(nu1,nu2)*i_* prop(-1,1,q2)*i_* prop(-1,2,q3)*i_* prop(-1,0,q4)*d_(nu7,nu8)*i_* prop(-1,2,q5)*i_* prop(-1,0,q6)*d_(nu1 1,nu1 2)*i_*e*qch1*(q2(nu1)-p4(nu1))*i_*e*qch2*(q3(nu7)-p2(nu7))*i_*e*qch2*(p1(nu1 1)-q5(nu1 1))*i_*e*qch2*(q5(nu2)-q3(nu2));
#procedure momentumRouting
Id q2 = p3 + q4 + q6;
Id p1 = p2 + p4 + -p3;
Id q1 = p3 + q4 + q6 + -p4;
Id q3 = p2 + q4;
Id q5 = p2 + p4 + -p3 + -q6;

#endprocedure
*--#]d112l2:

*--#[d113l2:
L [d113l2|2.3.4|i.5|o.5|i.5|o|] = 1*i_* prop(-1,1,q1)*i_* prop(-1,0,q2)*d_(nu3,nu4)*i_* prop(-1,1,q3)*i_* prop(-1,0,q4)*d_(nu7,nu8)*i_* prop(-1,0,q5)*d_(nu9,nu1 0)*i_* prop(-1,2,q6)*i_*e*qch1*(q1(nu3)-p4(nu3))*i_*e*qch1*(p3(nu7)-q3(nu7))*i_*e*qch2*(p1(nu9)-q6(nu9))*i_*e*qch1*(q3(nu1 0)-q1(nu1 0))*2*i_*qch2^2*e^2*d_(nu4,nu8);
#procedure momentumRouting
Id q2 = p3 + q5 + -p4 + -q4;
Id p1 = p2 + p4 + -p3;
Id q1 = p3 + q5 + -q4;
Id q3 = p3 + -q4;
Id q6 = p2 + p4 + -p3 + -q5;

#endprocedure
*--#]d113l2:

*--#[d114l2:
L [d114l2|2.3.4|i.5|o.5|i.5|o|] = 1*i_* prop(-1,2,q1)*i_* prop(-1,0,q2)*d_(nu3,nu4)*i_* prop(-1,0,q3)*d_(nu5,nu6)*i_* prop(-1,1,q4)*i_* prop(-1,2,q5)*i_* prop(-1,0,q6)*d_(nu1 1,nu1 2)*i_*e*qch2*(q1(nu3)-p2(nu3))*i_*e*qch1*(p3(nu5)-q4(nu5))*i_*e*qch2*(p1(nu1 1)-q5(nu1 1))*i_*e*qch2*(q5(nu6)-q1(nu6))*2*i_*qch1^2*e^2*d_(nu1 2,nu4);
#procedure momentumRouting
Id q2 = p4 + q3 + -p3 + -q6;
Id q4 = p3 + -q3;
Id p1 = p2 + p4 + -p3;
Id q1 = p2 + p4 + q3 + -p3 + -q6;
Id q5 = p2 + p4 + -p3 + -q6;

#endprocedure
*--#]d114l2:

*--#[d115l2:
L [d115l2|o.2.4|o.5|i.4.5|i.5||] = 1*i_* prop(-1,0,q1)*d_(nu1,nu2)*i_* prop(-1,1,q2)*i_* prop(-1,2,q3)*i_* prop(-1,1,q4)*i_* prop(-1,0,q5)*d_(nu9,nu1 0)*i_* prop(-1,0,q6)*d_(nu1 1,nu1 2)*i_*e*qch1*(q2(nu1)-p4(nu1))*i_*e*qch2*(q3(nu2)-p2(nu2))*i_*e*qch1*(p3(nu9)-q4(nu9))*i_*e*qch1*(q4(nu1 1)-q2(nu1 1));
#procedure momentumRouting
Id q2 = p3 + -q5 + -q6;
Id q4 = p3 + -q5;
Id p1 = p2 + p4 + -p3;
Id q1 = p3 + -p4 + -q5 + -q6;
Id q3 = p2 + p4 + q5 + q6 + -p3;

#endprocedure
*--#]d115l2:

*--#[d116l2:
L [d116l2|2.3.5|o.3.4|i|o.5|i|] = 1*i_* prop(-1,1,q1)*i_* prop(-1,0,q2)*d_(nu3,nu4)*i_* prop(-1,0,q3)*d_(nu5,nu6)*i_* prop(-1,2,q4)*i_* prop(-1,0,q5)*d_(nu9,nu1 0)*i_* prop(-1,2,q6)*i_*e*qch1*(q1(nu3)-p4(nu3))*i_*e*qch1*(p3(nu5)-q1(nu5))*i_*e*qch2*(q4(nu9)-p2(nu9))*i_*e*qch2*(q6(nu4)-q4(nu4))*2*i_*qch2^2*e^2*d_(nu6,nu1 0);
#procedure momentumRouting
Id q2 = p3 + -p4 + -q3;
Id q4 = p2 + q5;
Id p1 = p2 + p4 + -p3;
Id q1 = p3 + -q3;
Id q6 = p2 + p4 + q3 + q5 + -p3;

#endprocedure
*--#]d116l2:

*--#[d117l2:
L [d117l2|o.2.3.4|i.3|5|i.5|o|] = 1*i_* prop(-1,1,q1)*i_* prop(-1,0,q2)*d_(nu3,nu4)*i_* prop(-1,0,q3)*d_(nu5,nu6)*i_* prop(-1,2,q4)*i_* prop(-1,0,q5)*d_(nu9,nu1 0)*i_* prop(-1,2,q6)*i_*e*qch1*(q1(nu3)-p4(nu3))*i_*e*qch1*(p3(nu5)-q1(nu5))*i_*e*qch2*(p1(nu9)-q4(nu9))*i_*e*qch2*(q4(nu4)-q6(nu4))*2*i_*qch2^2*e^2*d_(nu6,nu1 0);
#procedure momentumRouting
Id q2 = p3 + -p4 + -q3;
Id q4 = p2 + p4 + -p3 + -q5;
Id p1 = p2 + p4 + -p3;
Id q1 = p3 + -q3;
Id q6 = p2 + -q3 + -q5;

#endprocedure
*--#]d117l2:

*--#[d118l2:
L [d118l2|o.3.5|i.3.4|5|o.5|i|] = 1*i_* prop(-1,0,q1)*d_(nu1,nu2)*i_* prop(-1,1,q2)*i_* prop(-1,2,q3)*i_* prop(-1,1,q4)*i_* prop(-1,0,q5)*d_(nu9,nu1 0)*i_* prop(-1,0,q6)*d_(nu1 1,nu1 2)*i_*e*qch1*(q2(nu1)-p4(nu1))*i_*e*qch2*(p1(nu2)-q3(nu2))*i_*e*qch1*(p3(nu9)-q4(nu9))*i_*e*qch1*(q4(nu1 1)-q2(nu1 1));
#procedure momentumRouting
Id q2 = p3 + -q5 + -q6;
Id q4 = p3 + -q5;
Id p1 = p2 + p4 + -p3;
Id q1 = p3 + -p4 + -q5 + -q6;
Id q3 = p2 + -q5 + -q6;

#endprocedure
*--#]d118l2:

*--#[d119l2:
L [d119l2|o.2.4|o.5|i.4.5|i.5||] = 1*i_* prop(-1,0,q1)*d_(nu1,nu2)*i_* prop(-1,2,q2)*i_* prop(-1,1,q3)*i_* prop(-1,2,q4)*i_* prop(-1,0,q5)*d_(nu9,nu1 0)*i_* prop(-1,0,q6)*d_(nu1 1,nu1 2)*i_*e*qch2*(q2(nu1)-p2(nu1))*i_*e*qch1*(q3(nu2)-p4(nu2))*i_*e*qch2*(p1(nu9)-q4(nu9))*i_*e*qch2*(q4(nu1 1)-q2(nu1 1));
#procedure momentumRouting
Id q2 = p2 + p4 + -p3 + -q5 + -q6;
Id q4 = p2 + p4 + -p3 + -q5;
Id p1 = p2 + p4 + -p3;
Id q1 = p4 + -p3 + -q5 + -q6;
Id q3 = p3 + q5 + q6;

#endprocedure
*--#]d119l2:

*--#[d120l2:
L [d120l2|o.3.5|i.3.4|5|o.5|i|] = 1*i_* prop(-1,0,q1)*d_(nu1,nu2)*i_* prop(-1,2,q2)*i_* prop(-1,1,q3)*i_* prop(-1,2,q4)*i_* prop(-1,0,q5)*d_(nu9,nu1 0)*i_* prop(-1,0,q6)*d_(nu1 1,nu1 2)*i_*e*qch2*(q2(nu1)-p2(nu1))*i_*e*qch1*(p3(nu2)-q3(nu2))*i_*e*qch2*(p1(nu9)-q4(nu9))*i_*e*qch2*(q4(nu1 1)-q2(nu1 1));
#procedure momentumRouting
Id q2 = p2 + p4 + -p3 + -q5 + -q6;
Id q4 = p2 + p4 + -p3 + -q5;
Id p1 = p2 + p4 + -p3;
Id q1 = p4 + -p3 + -q5 + -q6;
Id q3 = p4 + -q5 + -q6;

#endprocedure
*--#]d120l2:

*--#[d121l2:
L [d121l2|2.3.5|o.3.4|i|o.5|i|] = 1*i_* prop(-1,2,q1)*i_* prop(-1,0,q2)*d_(nu3,nu4)*i_* prop(-1,0,q3)*d_(nu5,nu6)*i_* prop(-1,1,q4)*i_* prop(-1,0,q5)*d_(nu9,nu1 0)*i_* prop(-1,1,q6)*i_*e*qch2*(q1(nu3)-p2(nu3))*i_*e*qch2*(p1(nu5)-q1(nu5))*i_*e*qch1*(q4(nu9)-p4(nu9))*i_*e*qch1*(q6(nu4)-q4(nu4))*2*i_*qch1^2*e^2*d_(nu6,nu1 0);
#procedure momentumRouting
Id q2 = p4 + -p3 + -q3;
Id q4 = p4 + q5;
Id p1 = p2 + p4 + -p3;
Id q1 = p2 + p4 + -p3 + -q3;
Id q6 = p3 + q3 + q5;

#endprocedure
*--#]d121l2:

*--#[d122l2:
L [d122l2|o.2.3.4|i.3|5|i.5|o|] = 1*i_* prop(-1,2,q1)*i_* prop(-1,0,q2)*d_(nu3,nu4)*i_* prop(-1,0,q3)*d_(nu5,nu6)*i_* prop(-1,1,q4)*i_* prop(-1,0,q5)*d_(nu9,nu1 0)*i_* prop(-1,1,q6)*i_*e*qch2*(q1(nu3)-p2(nu3))*i_*e*qch2*(p1(nu5)-q1(nu5))*i_*e*qch1*(p3(nu9)-q4(nu9))*i_*e*qch1*(q4(nu4)-q6(nu4))*2*i_*qch1^2*e^2*d_(nu6,nu1 0);
#procedure momentumRouting
Id q2 = p4 + -p3 + -q3;
Id q4 = p3 + -q5;
Id p1 = p2 + p4 + -p3;
Id q1 = p2 + p4 + -p3 + -q3;
Id q6 = p4 + -q3 + -q5;

#endprocedure
*--#]d122l2:

*--#[d123l2:
L [d123l2|o.2.4|i.5|i.4.5|5|o|] = 1*i_* prop(-1,1,q1)*i_* prop(-1,0,q2)*d_(nu3,nu4)*i_* prop(-1,0,q3)*d_(nu5,nu6)*i_* prop(-1,2,q4)*i_* prop(-1,0,q5)*d_(nu9,nu1 0)*i_* prop(-1,2,q6)*i_*e*qch1*(p3(nu3)-q1(nu3))*i_*e*qch1*(q1(nu5)-p4(nu5))*i_*e*qch2*(q4(nu9)-p2(nu9))*i_*e*qch2*(q6(nu4)-q4(nu4))*2*i_*qch2^2*e^2*d_(nu6,nu1 0);
#procedure momentumRouting
Id q2 = p3 + -p4 + -q3;
Id q4 = p2 + q5;
Id p1 = p2 + p4 + -p3;
Id q1 = p4 + q3;
Id q6 = p2 + p4 + q3 + q5 + -p3;

#endprocedure
*--#]d123l2:

*--#[d124l2:
L [d124l2|o.2.3.4|o.5|4.5|i|i|] = 1*i_* prop(-1,1,q1)*i_* prop(-1,0,q2)*d_(nu3,nu4)*i_* prop(-1,0,q3)*d_(nu5,nu6)*i_* prop(-1,2,q4)*i_* prop(-1,0,q5)*d_(nu9,nu1 0)*i_* prop(-1,2,q6)*i_*e*qch1*(p3(nu3)-q1(nu3))*i_*e*qch1*(q1(nu5)-p4(nu5))*i_*e*qch2*(p1(nu9)-q4(nu9))*i_*e*qch2*(q4(nu4)-q6(nu4))*2*i_*qch2^2*e^2*d_(nu6,nu1 0);
#procedure momentumRouting
Id q2 = p3 + -p4 + -q3;
Id q4 = p2 + p4 + -p3 + -q5;
Id p1 = p2 + p4 + -p3;
Id q1 = p4 + q3;
Id q6 = p2 + -q3 + -q5;

#endprocedure
*--#]d124l2:

*--#[d125l2:
L [d125l2|o.2.5|i.3|o.4.5|i.5||] = 1*i_* prop(-1,0,q1)*d_(nu1,nu2)*i_* prop(-1,1,q2)*i_* prop(-1,2,q3)*i_* prop(-1,1,q4)*i_* prop(-1,0,q5)*d_(nu9,nu1 0)*i_* prop(-1,0,q6)*d_(nu1 1,nu1 2)*i_*e*qch1*(p3(nu1)-q2(nu1))*i_*e*qch2*(q3(nu2)-p2(nu2))*i_*e*qch1*(q4(nu9)-p4(nu9))*i_*e*qch1*(q2(nu1 1)-q4(nu1 1));
#procedure momentumRouting
Id q2 = p4 + q5 + q6;
Id q4 = p4 + q5;
Id p1 = p2 + p4 + -p3;
Id q1 = p3 + -p4 + -q5 + -q6;
Id q3 = p2 + p4 + q5 + q6 + -p3;

#endprocedure
*--#]d125l2:

*--#[d126l2:
L [d126l2|i.4.5|o.3.5|o.4|5|i|] = 1*i_* prop(-1,0,q1)*d_(nu1,nu2)*i_* prop(-1,1,q2)*i_* prop(-1,2,q3)*i_* prop(-1,1,q4)*i_* prop(-1,0,q5)*d_(nu9,nu1 0)*i_* prop(-1,0,q6)*d_(nu1 1,nu1 2)*i_*e*qch1*(p3(nu1)-q2(nu1))*i_*e*qch2*(p1(nu2)-q3(nu2))*i_*e*qch1*(q4(nu9)-p4(nu9))*i_*e*qch1*(q2(nu1 1)-q4(nu1 1));
#procedure momentumRouting
Id q2 = p4 + q5 + q6;
Id q4 = p4 + q5;
Id p1 = p2 + p4 + -p3;
Id q1 = p3 + -p4 + -q5 + -q6;
Id q3 = p2 + -q5 + -q6;

#endprocedure
*--#]d126l2:

*--#[d127l2:
L [d127l2|o.2.5|i.3|o.4.5|i.5||] = 1*i_* prop(-1,0,q1)*d_(nu1,nu2)*i_* prop(-1,2,q2)*i_* prop(-1,1,q3)*i_* prop(-1,2,q4)*i_* prop(-1,0,q5)*d_(nu9,nu1 0)*i_* prop(-1,0,q6)*d_(nu1 1,nu1 2)*i_*e*qch2*(p1(nu1)-q2(nu1))*i_*e*qch1*(q3(nu2)-p4(nu2))*i_*e*qch2*(q4(nu9)-p2(nu9))*i_*e*qch2*(q2(nu1 1)-q4(nu1 1));
#procedure momentumRouting
Id q2 = p2 + q5 + q6;
Id q4 = p2 + q5;
Id p1 = p2 + p4 + -p3;
Id q1 = p4 + -p3 + -q5 + -q6;
Id q3 = p3 + q5 + q6;

#endprocedure
*--#]d127l2:

*--#[d128l2:
L [d128l2|o.2.4|i.5|i.4.5|5|o|] = 1*i_* prop(-1,2,q1)*i_* prop(-1,0,q2)*d_(nu3,nu4)*i_* prop(-1,0,q3)*d_(nu5,nu6)*i_* prop(-1,1,q4)*i_* prop(-1,0,q5)*d_(nu9,nu1 0)*i_* prop(-1,1,q6)*i_*e*qch2*(p1(nu3)-q1(nu3))*i_*e*qch2*(q1(nu5)-p2(nu5))*i_*e*qch1*(q4(nu9)-p4(nu9))*i_*e*qch1*(q6(nu4)-q4(nu4))*2*i_*qch1^2*e^2*d_(nu6,nu1 0);
#procedure momentumRouting
Id q2 = p4 + -p3 + -q3;
Id q4 = p4 + q5;
Id p1 = p2 + p4 + -p3;
Id q1 = p2 + q3;
Id q6 = p3 + q3 + q5;

#endprocedure
*--#]d128l2:

*--#[d129l2:
L [d129l2|o.2.3.4|o.5|4.5|i|i|] = 1*i_* prop(-1,2,q1)*i_* prop(-1,0,q2)*d_(nu3,nu4)*i_* prop(-1,0,q3)*d_(nu5,nu6)*i_* prop(-1,1,q4)*i_* prop(-1,0,q5)*d_(nu9,nu1 0)*i_* prop(-1,1,q6)*i_*e*qch2*(p1(nu3)-q1(nu3))*i_*e*qch2*(q1(nu5)-p2(nu5))*i_*e*qch1*(p3(nu9)-q4(nu9))*i_*e*qch1*(q4(nu4)-q6(nu4))*2*i_*qch1^2*e^2*d_(nu6,nu1 0);
#procedure momentumRouting
Id q2 = p4 + -p3 + -q3;
Id q4 = p3 + -q5;
Id p1 = p2 + p4 + -p3;
Id q1 = p2 + q3;
Id q6 = p4 + -q3 + -q5;

#endprocedure
*--#]d129l2:

*--#[d130l2:
L [d130l2|i.4.5|o.3.5|o.4|5|i|] = 1*i_* prop(-1,0,q1)*d_(nu1,nu2)*i_* prop(-1,2,q2)*i_* prop(-1,1,q3)*i_* prop(-1,2,q4)*i_* prop(-1,0,q5)*d_(nu9,nu1 0)*i_* prop(-1,0,q6)*d_(nu1 1,nu1 2)*i_*e*qch2*(p1(nu1)-q2(nu1))*i_*e*qch1*(p3(nu2)-q3(nu2))*i_*e*qch2*(q4(nu9)-p2(nu9))*i_*e*qch2*(q2(nu1 1)-q4(nu1 1));
#procedure momentumRouting
Id q2 = p2 + q5 + q6;
Id q4 = p2 + q5;
Id p1 = p2 + p4 + -p3;
Id q1 = p4 + -p3 + -q5 + -q6;
Id q3 = p4 + -q5 + -q6;

#endprocedure
*--#]d130l2:

*--#[d131l2:
L [d131l2|i.2.2|o.3|4.5|o.5|i|] = 1*i_* prop(-1,0,q1)*d_(nu1,nu2)*i_* prop(-1,1,q2)*i_* prop(-1,1,q3)*i_* prop(-1,2,q4)*i_* prop(-1,0,q5)*d_(nu9,nu1 0)*i_* prop(-1,0,q6)*d_(nu1 1,nu1 2)*i_*e*qch1*(q2(nu1)-p4(nu1))*i_*e*qch1*(p3(nu2)-q3(nu2))*i_*e*qch2*(q4(nu9)-p2(nu9))*i_*e*qch1*(q3(nu1 1)-q2(nu1 1));
#procedure momentumRouting
Id q2 = p4 + q1;
Id q4 = p2 + q5;
Id p1 = p2 + p4 + -p3;
Id q3 = p3 + q1;
Id q6 = p3 + -p4;

#endprocedure
*--#]d131l2:

*--#[d132l2:
L [d132l2|o.2.2.5|i|o.4.5|i.5||] = 1*i_* prop(-1,0,q1)*d_(nu1,nu2)*i_* prop(-1,1,q2)*i_* prop(-1,1,q3)*i_* prop(-1,2,q4)*i_* prop(-1,0,q5)*d_(nu9,nu1 0)*i_* prop(-1,0,q6)*d_(nu1 1,nu1 2)*i_*e*qch1*(q2(nu1)-p4(nu1))*i_*e*qch1*(p3(nu2)-q3(nu2))*i_*e*qch2*(p1(nu9)-q4(nu9))*i_*e*qch1*(q3(nu1 1)-q2(nu1 1));
#procedure momentumRouting
Id q2 = p4 + q1;
Id q4 = p2 + p4 + -p3 + -q5;
Id p1 = p2 + p4 + -p3;
Id q3 = p3 + q1;
Id q6 = p3 + -p4;

#endprocedure
*--#]d132l2:

*--#[d133l2:
L [d133l2|i.2.2|o.3|4.5|o.5|i|] = 1*i_* prop(-1,0,q1)*d_(nu1,nu2)*i_* prop(-1,2,q2)*i_* prop(-1,2,q3)*i_* prop(-1,1,q4)*i_* prop(-1,0,q5)*d_(nu9,nu1 0)*i_* prop(-1,0,q6)*d_(nu1 1,nu1 2)*i_*e*qch2*(q2(nu1)-p2(nu1))*i_*e*qch2*(p1(nu2)-q3(nu2))*i_*e*qch1*(q4(nu9)-p4(nu9))*i_*e*qch2*(q3(nu1 1)-q2(nu1 1));
#procedure momentumRouting
Id q2 = p2 + q1;
Id q4 = p4 + q5;
Id p1 = p2 + p4 + -p3;
Id q3 = p2 + p4 + q1 + -p3;
Id q6 = p4 + -p3;

#endprocedure
*--#]d133l2:

*--#[d134l2:
L [d134l2|o.2.2.5|i|o.4.5|i.5||] = 1*i_* prop(-1,0,q1)*d_(nu1,nu2)*i_* prop(-1,2,q2)*i_* prop(-1,2,q3)*i_* prop(-1,1,q4)*i_* prop(-1,0,q5)*d_(nu9,nu1 0)*i_* prop(-1,0,q6)*d_(nu1 1,nu1 2)*i_*e*qch2*(q2(nu1)-p2(nu1))*i_*e*qch2*(p1(nu2)-q3(nu2))*i_*e*qch1*(p3(nu9)-q4(nu9))*i_*e*qch2*(q3(nu1 1)-q2(nu1 1));
#procedure momentumRouting
Id q2 = p2 + q1;
Id q4 = p3 + -q5;
Id p1 = p2 + p4 + -p3;
Id q3 = p2 + p4 + q1 + -p3;
Id q6 = p4 + -p3;

#endprocedure
*--#]d134l2:

*--#[d135l2:
L [d135l2|o.2.3|i.4|o.5|i.5.5||] = 1*i_* prop(-1,0,q1)*d_(nu1,nu2)*i_* prop(-1,1,q2)*i_* prop(-1,2,q3)*i_* prop(-1,0,q4)*d_(nu7,nu8)*i_* prop(-1,2,q5)*i_* prop(-1,0,q6)*d_(nu1 1,nu1 2)*i_*e*qch1*(q2(nu1)-p4(nu1))*i_*e*qch2*(q3(nu2)-p2(nu2))*i_*e*qch1*(p3(nu7)-q2(nu7))*i_*e*qch2*(q5(nu1 1)-q3(nu1 1))*2*i_*qch2^2*e^2*d_(nu1 2,nu8);
#procedure momentumRouting
Id q2 = p3 + -q4;
Id p1 = p2 + p4 + -p3;
Id q1 = p3 + -p4 + -q4;
Id q3 = p2 + p4 + q4 + -p3;
Id q5 = p2 + p4 + q4 + q6 + -p3;

#endprocedure
*--#]d135l2:

*--#[d136l2:
L [d136l2|o.2.4|i.5|4.4.5|i|o|] = 1*i_* prop(-1,0,q1)*d_(nu1,nu2)*i_* prop(-1,1,q2)*i_* prop(-1,2,q3)*i_* prop(-1,0,q4)*d_(nu7,nu8)*i_* prop(-1,2,q5)*i_* prop(-1,0,q6)*d_(nu1 1,nu1 2)*i_*e*qch1*(q2(nu1)-p4(nu1))*i_*e*qch2*(p1(nu2)-q3(nu2))*i_*e*qch1*(p3(nu7)-q2(nu7))*i_*e*qch2*(q3(nu1 1)-q5(nu1 1))*2*i_*qch2^2*e^2*d_(nu1 2,nu8);
#procedure momentumRouting
Id q2 = p3 + -q4;
Id p1 = p2 + p4 + -p3;
Id q1 = p3 + -p4 + -q4;
Id q3 = p2 + -q4;
Id q5 = p2 + -q4 + -q6;

#endprocedure
*--#]d136l2:

*--#[d137l2:
L [d137l2|o.2.3|i.4|o.5|i.5.5||] = 1*i_* prop(-1,0,q1)*d_(nu1,nu2)*i_* prop(-1,2,q2)*i_* prop(-1,1,q3)*i_* prop(-1,0,q4)*d_(nu7,nu8)*i_* prop(-1,1,q5)*i_* prop(-1,0,q6)*d_(nu1 1,nu1 2)*i_*e*qch2*(q2(nu1)-p2(nu1))*i_*e*qch1*(q3(nu2)-p4(nu2))*i_*e*qch2*(p1(nu7)-q2(nu7))*i_*e*qch1*(q5(nu1 1)-q3(nu1 1))*2*i_*qch1^2*e^2*d_(nu1 2,nu8);
#procedure momentumRouting
Id q2 = p2 + p4 + -p3 + -q4;
Id p1 = p2 + p4 + -p3;
Id q1 = p4 + -p3 + -q4;
Id q3 = p3 + q4;
Id q5 = p3 + q4 + q6;

#endprocedure
*--#]d137l2:

*--#[d138l2:
L [d138l2|o.2.4|i.5|4.4.5|i|o|] = 1*i_* prop(-1,0,q1)*d_(nu1,nu2)*i_* prop(-1,2,q2)*i_* prop(-1,1,q3)*i_* prop(-1,0,q4)*d_(nu7,nu8)*i_* prop(-1,1,q5)*i_* prop(-1,0,q6)*d_(nu1 1,nu1 2)*i_*e*qch2*(q2(nu1)-p2(nu1))*i_*e*qch1*(p3(nu2)-q3(nu2))*i_*e*qch2*(p1(nu7)-q2(nu7))*i_*e*qch1*(q3(nu1 1)-q5(nu1 1))*2*i_*qch1^2*e^2*d_(nu1 2,nu8);
#procedure momentumRouting
Id q2 = p2 + p4 + -p3 + -q4;
Id p1 = p2 + p4 + -p3;
Id q1 = p4 + -p3 + -q4;
Id q3 = p4 + -q4;
Id q5 = p4 + -q4 + -q6;

#endprocedure
*--#]d138l2:

*--#[d139l2:
L [d139l2|i.2.3|o.5.5|o.4|i.5||] = 1*i_* prop(-1,0,q1)*d_(nu1,nu2)*i_* prop(-1,1,q2)*i_* prop(-1,2,q3)*i_* prop(-1,0,q4)*d_(nu7,nu8)*i_* prop(-1,2,q5)*i_* prop(-1,0,q6)*d_(nu1 1,nu1 2)*i_*e*qch1*(p3(nu1)-q2(nu1))*i_*e*qch2*(q3(nu2)-p2(nu2))*i_*e*qch1*(q2(nu7)-p4(nu7))*i_*e*qch2*(q5(nu1 1)-q3(nu1 1))*2*i_*qch2^2*e^2*d_(nu1 2,nu8);
#procedure momentumRouting
Id q2 = p4 + q4;
Id p1 = p2 + p4 + -p3;
Id q1 = p3 + -p4 + -q4;
Id q3 = p2 + p4 + q4 + -p3;
Id q5 = p2 + p4 + q4 + q6 + -p3;

#endprocedure
*--#]d139l2:

*--#[d140l2:
L [d140l2|i.4.5|o.3.5|o.4.4||i|] = 1*i_* prop(-1,0,q1)*d_(nu1,nu2)*i_* prop(-1,1,q2)*i_* prop(-1,2,q3)*i_* prop(-1,0,q4)*d_(nu7,nu8)*i_* prop(-1,2,q5)*i_* prop(-1,0,q6)*d_(nu1 1,nu1 2)*i_*e*qch1*(p3(nu1)-q2(nu1))*i_*e*qch2*(p1(nu2)-q3(nu2))*i_*e*qch1*(q2(nu7)-p4(nu7))*i_*e*qch2*(q3(nu1 1)-q5(nu1 1))*2*i_*qch2^2*e^2*d_(nu1 2,nu8);
#procedure momentumRouting
Id q2 = p4 + q4;
Id p1 = p2 + p4 + -p3;
Id q1 = p3 + -p4 + -q4;
Id q3 = p2 + -q4;
Id q5 = p2 + -q4 + -q6;

#endprocedure
*--#]d140l2:

*--#[d141l2:
L [d141l2|i.2.3|o.5.5|o.4|i.5||] = 1*i_* prop(-1,0,q1)*d_(nu1,nu2)*i_* prop(-1,2,q2)*i_* prop(-1,1,q3)*i_* prop(-1,0,q4)*d_(nu7,nu8)*i_* prop(-1,1,q5)*i_* prop(-1,0,q6)*d_(nu1 1,nu1 2)*i_*e*qch2*(p1(nu1)-q2(nu1))*i_*e*qch1*(q3(nu2)-p4(nu2))*i_*e*qch2*(q2(nu7)-p2(nu7))*i_*e*qch1*(q5(nu1 1)-q3(nu1 1))*2*i_*qch1^2*e^2*d_(nu1 2,nu8);
#procedure momentumRouting
Id q2 = p2 + q4;
Id p1 = p2 + p4 + -p3;
Id q1 = p4 + -p3 + -q4;
Id q3 = p3 + q4;
Id q5 = p3 + q4 + q6;

#endprocedure
*--#]d141l2:

*--#[d142l2:
L [d142l2|i.4.5|o.3.5|o.4.4||i|] = 1*i_* prop(-1,0,q1)*d_(nu1,nu2)*i_* prop(-1,2,q2)*i_* prop(-1,1,q3)*i_* prop(-1,0,q4)*d_(nu7,nu8)*i_* prop(-1,1,q5)*i_* prop(-1,0,q6)*d_(nu1 1,nu1 2)*i_*e*qch2*(p1(nu1)-q2(nu1))*i_*e*qch1*(p3(nu2)-q3(nu2))*i_*e*qch2*(q2(nu7)-p2(nu7))*i_*e*qch1*(q3(nu1 1)-q5(nu1 1))*2*i_*qch1^2*e^2*d_(nu1 2,nu8);
#procedure momentumRouting
Id q2 = p2 + q4;
Id p1 = p2 + p4 + -p3;
Id q1 = p4 + -p3 + -q4;
Id q3 = p4 + -q4;
Id q5 = p4 + -q4 + -q6;

#endprocedure
*--#]d142l2:

*--#[d143l2:
L [d143l2|2.5.5|3.5|o.i|o.i.5||] = 1*i_* prop(-1,0,q1)*d_(nu1,nu2)*i_* prop(-1,0,q2)*d_(nu3,nu4)*i_* prop(-1,1,q3)*i_* prop(-1,1,q4)*i_* prop(-1,1,q5)*i_* prop(-1,0,q6)*d_(nu1 1,nu1 2)*i_*e*qch1*(p3(nu1)-p4(nu1))*i_*e*qch2*(p1(nu3)-p2(nu3))*i_*e*qch1*(q3(nu2)-q4(nu2))*i_*e*qch1*(q5(nu1 1)-q3(nu1 1))*2*i_*qch1^2*e^2*d_(nu1 2,nu4);
#procedure momentumRouting
Id q2 = p4 + -p3;
Id q4 = p3 + q5 + -p4 + -q6;
Id p1 = p2 + p4 + -p3;
Id q1 = p3 + -p4;
Id q3 = q5 + -q6;

#endprocedure
*--#]d143l2:

*--#[d144l2:
L [d144l2|2.3.5.5|4.5|o.i|o.i||] = 1*i_* prop(-1,0,q1)*d_(nu1,nu2)*i_* prop(-1,0,q2)*d_(nu3,nu4)*i_* prop(-1,1,q3)*i_* prop(-1,1,q4)*i_* prop(-1,1,q5)*i_* prop(-1,0,q6)*d_(nu1 1,nu1 2)*i_*e*qch1*(p3(nu1)-p4(nu1))*i_*e*qch2*(p1(nu3)-p2(nu3))*i_*e*qch1*(q4(nu2)-q3(nu2))*i_*e*qch1*(q3(nu1 1)-q5(nu1 1))*2*i_*qch1^2*e^2*d_(nu1 2,nu4);
#procedure momentumRouting
Id q2 = p4 + -p3;
Id q4 = p4 + q5 + q6 + -p3;
Id p1 = p2 + p4 + -p3;
Id q1 = p3 + -p4;
Id q3 = q5 + q6;

#endprocedure
*--#]d144l2:

*--#[d145l2:
L [d145l2|2.3.3.4|3.5||o.i|o.i|] = 1*i_* prop(-1,0,q1)*d_(nu1,nu2)*i_* prop(-1,0,q2)*d_(nu3,nu4)*i_* prop(-1,2,q3)*i_* prop(-1,2,q4)*i_* prop(-1,2,q5)*i_* prop(-1,0,q6)*d_(nu1 1,nu1 2)*i_*e*qch1*(p3(nu1)-p4(nu1))*i_*e*qch2*(p1(nu3)-p2(nu3))*i_*e*qch2*(q3(nu2)-q4(nu2))*i_*e*qch2*(q5(nu1 1)-q3(nu1 1))*2*i_*qch2^2*e^2*d_(nu1 2,nu4);
#procedure momentumRouting
Id q2 = p4 + -p3;
Id q4 = p3 + q5 + -p4 + -q6;
Id p1 = p2 + p4 + -p3;
Id q1 = p3 + -p4;
Id q3 = q5 + -q6;

#endprocedure
*--#]d145l2:

*--#[d146l2:
L [d146l2|o.i.3|3.4.4.5|4||o.i|] = 1*i_* prop(-1,0,q1)*d_(nu1,nu2)*i_* prop(-1,0,q2)*d_(nu3,nu4)*i_* prop(-1,2,q3)*i_* prop(-1,2,q4)*i_* prop(-1,2,q5)*i_* prop(-1,0,q6)*d_(nu1 1,nu1 2)*i_*e*qch1*(p3(nu1)-p4(nu1))*i_*e*qch2*(p1(nu3)-p2(nu3))*i_*e*qch2*(q4(nu2)-q3(nu2))*i_*e*qch2*(q3(nu1 1)-q5(nu1 1))*2*i_*qch2^2*e^2*d_(nu1 2,nu4);
#procedure momentumRouting
Id q2 = p4 + -p3;
Id q4 = p4 + q5 + q6 + -p3;
Id p1 = p2 + p4 + -p3;
Id q1 = p3 + -p4;
Id q3 = q5 + q6;

#endprocedure
*--#]d146l2:

*--#[d147l2:
L [d147l2|2.3.3.4|3.5||o.i|o.i|] = 1*i_* prop(-1,0,q1)*d_(nu1,nu2)*i_* prop(-1,0,q2)*d_(nu3,nu4)*i_* prop(-1,1,q3)*i_* prop(-1,1,q4)*i_* prop(-1,1,q5)*i_* prop(-1,0,q6)*d_(nu1 1,nu1 2)*i_*e*qch2*(p1(nu1)-p2(nu1))*i_*e*qch1*(p3(nu3)-p4(nu3))*i_*e*qch1*(q3(nu2)-q4(nu2))*i_*e*qch1*(q5(nu1 1)-q3(nu1 1))*2*i_*qch1^2*e^2*d_(nu1 2,nu4);
#procedure momentumRouting
Id q2 = p3 + -p4;
Id q4 = p4 + q5 + -p3 + -q6;
Id p1 = p2 + p4 + -p3;
Id q1 = p4 + -p3;
Id q3 = q5 + -q6;

#endprocedure
*--#]d147l2:

*--#[d148l2:
L [d148l2|o.i.3|3.4.4.5|4||o.i|] = 1*i_* prop(-1,0,q1)*d_(nu1,nu2)*i_* prop(-1,0,q2)*d_(nu3,nu4)*i_* prop(-1,1,q3)*i_* prop(-1,1,q4)*i_* prop(-1,1,q5)*i_* prop(-1,0,q6)*d_(nu1 1,nu1 2)*i_*e*qch2*(p1(nu1)-p2(nu1))*i_*e*qch1*(p3(nu3)-p4(nu3))*i_*e*qch1*(q4(nu2)-q3(nu2))*i_*e*qch1*(q3(nu1 1)-q5(nu1 1))*2*i_*qch1^2*e^2*d_(nu1 2,nu4);
#procedure momentumRouting
Id q2 = p3 + -p4;
Id q4 = p3 + q5 + q6 + -p4;
Id p1 = p2 + p4 + -p3;
Id q1 = p4 + -p3;
Id q3 = q5 + q6;

#endprocedure
*--#]d148l2:

*--#[d149l2:
L [d149l2|2.5.5|3.5|o.i|o.i.5||] = 1*i_* prop(-1,0,q1)*d_(nu1,nu2)*i_* prop(-1,0,q2)*d_(nu3,nu4)*i_* prop(-1,2,q3)*i_* prop(-1,2,q4)*i_* prop(-1,2,q5)*i_* prop(-1,0,q6)*d_(nu1 1,nu1 2)*i_*e*qch2*(p1(nu1)-p2(nu1))*i_*e*qch1*(p3(nu3)-p4(nu3))*i_*e*qch2*(q3(nu2)-q4(nu2))*i_*e*qch2*(q5(nu1 1)-q3(nu1 1))*2*i_*qch2^2*e^2*d_(nu1 2,nu4);
#procedure momentumRouting
Id q2 = p3 + -p4;
Id q4 = p4 + q5 + -p3 + -q6;
Id p1 = p2 + p4 + -p3;
Id q1 = p4 + -p3;
Id q3 = q5 + -q6;

#endprocedure
*--#]d149l2:

*--#[d150l2:
L [d150l2|2.3.5.5|4.5|o.i|o.i||] = 1*i_* prop(-1,0,q1)*d_(nu1,nu2)*i_* prop(-1,0,q2)*d_(nu3,nu4)*i_* prop(-1,2,q3)*i_* prop(-1,2,q4)*i_* prop(-1,2,q5)*i_* prop(-1,0,q6)*d_(nu1 1,nu1 2)*i_*e*qch2*(p1(nu1)-p2(nu1))*i_*e*qch1*(p3(nu3)-p4(nu3))*i_*e*qch2*(q4(nu2)-q3(nu2))*i_*e*qch2*(q3(nu1 1)-q5(nu1 1))*2*i_*qch2^2*e^2*d_(nu1 2,nu4);
#procedure momentumRouting
Id q2 = p3 + -p4;
Id q4 = p3 + q5 + q6 + -p4;
Id p1 = p2 + p4 + -p3;
Id q1 = p4 + -p3;
Id q3 = q5 + q6;

#endprocedure
*--#]d150l2:

*--#[d151l2:
L [d151l2|i.4.5|o.i.4|o.4.5|5||] = 1*i_* prop(-1,0,q1)*d_(nu1,nu2)*i_* prop(-1,0,q2)*d_(nu3,nu4)*i_* prop(-1,2,q3)*i_* prop(-1,2,q4)*i_* prop(-1,0,q5)*d_(nu9,nu1 0)*i_* prop(-1,2,q6)*i_*e*qch1*(p3(nu1)-p4(nu1))*i_*e*qch2*(q3(nu3)-p2(nu3))*i_*e*qch2*(p1(nu9)-q4(nu9))*i_*e*qch2*(q4(nu4)-q6(nu4))*2*i_*qch2^2*e^2*d_(nu1 0,nu2);
#procedure momentumRouting
Id p1 = p2 + p4 + -p3;
Id q4 = p2 + p4 + -p3 + -q5;
Id q1 = p3 + -p4;
Id q3 = p2 + q2;
Id q6 = p2 + p4 + q2 + -p3 + -q5;

#endprocedure
*--#]d151l2:

*--#[d152l2:
L [d152l2|o.3.4|o.i.3|4.5|5|i|] = 1*i_* prop(-1,0,q1)*d_(nu1,nu2)*i_* prop(-1,2,q2)*i_* prop(-1,0,q3)*d_(nu5,nu6)*i_* prop(-1,0,q4)*d_(nu7,nu8)*i_* prop(-1,2,q5)*i_* prop(-1,2,q6)*i_*e*qch1*(p3(nu1)-p4(nu1))*i_*e*qch2*(q2(nu5)-p2(nu5))*i_*e*qch2*(p1(nu7)-q5(nu7))*i_*e*qch2*(q6(nu8)-q2(nu8))*2*i_*qch2^2*e^2*d_(nu2,nu6);
#procedure momentumRouting
Id q2 = p2 + q3;
Id p1 = p2 + p4 + -p3;
Id q1 = p3 + -p4;
Id q6 = p2 + q3 + -q4;
Id q5 = p2 + p4 + -p3 + -q4;

#endprocedure
*--#]d152l2:

*--#[d153l2:
L [d153l2|i.4.5|o.i.4|o.4.5|5||] = 1*i_* prop(-1,0,q1)*d_(nu1,nu2)*i_* prop(-1,0,q2)*d_(nu3,nu4)*i_* prop(-1,1,q3)*i_* prop(-1,1,q4)*i_* prop(-1,0,q5)*d_(nu9,nu1 0)*i_* prop(-1,1,q6)*i_*e*qch2*(p1(nu1)-p2(nu1))*i_*e*qch1*(q3(nu3)-p4(nu3))*i_*e*qch1*(p3(nu9)-q4(nu9))*i_*e*qch1*(q4(nu4)-q6(nu4))*2*i_*qch1^2*e^2*d_(nu1 0,nu2);
#procedure momentumRouting
Id p1 = p2 + p4 + -p3;
Id q4 = p3 + -q5;
Id q1 = p4 + -p3;
Id q3 = p4 + q2;
Id q6 = p3 + q2 + -q5;

#endprocedure
*--#]d153l2:

*--#[d154l2:
L [d154l2|o.3.4|o.i.3|4.5|5|i|] = 1*i_* prop(-1,0,q1)*d_(nu1,nu2)*i_* prop(-1,1,q2)*i_* prop(-1,0,q3)*d_(nu5,nu6)*i_* prop(-1,0,q4)*d_(nu7,nu8)*i_* prop(-1,1,q5)*i_* prop(-1,1,q6)*i_*e*qch2*(p1(nu1)-p2(nu1))*i_*e*qch1*(q2(nu5)-p4(nu5))*i_*e*qch1*(p3(nu7)-q5(nu7))*i_*e*qch1*(q6(nu8)-q2(nu8))*2*i_*qch1^2*e^2*d_(nu2,nu6);
#procedure momentumRouting
Id q2 = p4 + q3;
Id p1 = p2 + p4 + -p3;
Id q1 = p4 + -p3;
Id q6 = p4 + q3 + -q4;
Id q5 = p3 + -q4;

#endprocedure
*--#]d154l2:

*--#[d155l2:
L [d155l2|2.2.4.5|3|o.4|i|o.i|] = 1*i_* prop(-1,0,q1)*d_(nu1,nu2)*i_* prop(-1,2,q2)*i_* prop(-1,0,q3)*d_(nu5,nu6)*i_* prop(-1,0,q4)*d_(nu7,nu8)*i_* prop(-1,1,q5)*i_* prop(-1,1,q6)*i_*e*qch1*(p3(nu1)-p4(nu1))*i_*e*qch2*(q2(nu5)-p2(nu5))*i_*e*qch2*(p1(nu7)-q2(nu7))*i_*e*qch1*(q5(nu6)-q6(nu6))*2*i_*qch1^2*e^2*d_(nu2,nu8);
#procedure momentumRouting
Id q2 = p2 + p4 + -p3 + -q4;
Id p1 = p2 + p4 + -p3;
Id q1 = p3 + -p4;
Id q3 = p4 + -p3 + -q4;
Id q5 = p3 + q4 + q6 + -p4;

#endprocedure
*--#]d155l2:

*--#[d156l2:
L [d156l2|o.3.5|o.i.5|i.4|5.5||] = 1*i_* prop(-1,0,q1)*d_(nu1,nu2)*i_* prop(-1,2,q2)*i_* prop(-1,0,q3)*d_(nu5,nu6)*i_* prop(-1,0,q4)*d_(nu7,nu8)*i_* prop(-1,2,q5)*i_* prop(-1,2,q6)*i_*e*qch1*(p3(nu1)-p4(nu1))*i_*e*qch2*(q2(nu5)-p2(nu5))*i_*e*qch2*(p1(nu7)-q2(nu7))*i_*e*qch2*(q5(nu6)-q6(nu6))*2*i_*qch2^2*e^2*d_(nu2,nu8);
#procedure momentumRouting
Id q2 = p2 + p4 + -p3 + -q4;
Id p1 = p2 + p4 + -p3;
Id q1 = p3 + -p4;
Id q3 = p4 + -p3 + -q4;
Id q5 = p3 + q4 + q6 + -p4;

#endprocedure
*--#]d156l2:

*--#[d157l2:
L [d157l2|i.3.5|3.4.5.5|o|o.i||] = 1*i_* prop(-1,0,q1)*d_(nu1,nu2)*i_* prop(-1,0,q2)*d_(nu3,nu4)*i_* prop(-1,2,q3)*i_* prop(-1,2,q4)*i_* prop(-1,2,q5)*i_* prop(-1,0,q6)*d_(nu1 1,nu1 2)*i_*e*qch1*(p3(nu1)-p4(nu1))*i_*e*qch2*(q3(nu3)-p2(nu3))*i_*e*qch2*(p1(nu4)-q4(nu4))*i_*e*qch2*(q5(nu1 1)-q3(nu1 1))*2*i_*qch2^2*e^2*d_(nu1 2,nu2);
#procedure momentumRouting
Id p1 = p2 + p4 + -p3;
Id q4 = p2 + p4 + q2 + -p3;
Id q1 = p3 + -p4;
Id q3 = p2 + q2;
Id q5 = p2 + q2 + q6;

#endprocedure
*--#]d157l2:

*--#[d158l2:
L [d158l2|2.5.5|o.3|i.5|o.i.5||] = 1*i_* prop(-1,0,q1)*d_(nu1,nu2)*i_* prop(-1,2,q2)*i_* prop(-1,0,q3)*d_(nu5,nu6)*i_* prop(-1,0,q4)*d_(nu7,nu8)*i_* prop(-1,1,q5)*i_* prop(-1,1,q6)*i_*e*qch1*(p3(nu1)-p4(nu1))*i_*e*qch2*(p1(nu5)-q2(nu5))*i_*e*qch2*(q2(nu7)-p2(nu7))*i_*e*qch1*(q5(nu6)-q6(nu6))*2*i_*qch1^2*e^2*d_(nu2,nu8);
#procedure momentumRouting
Id q2 = p2 + q4;
Id p1 = p2 + p4 + -p3;
Id q1 = p3 + -p4;
Id q3 = p4 + -p3 + -q4;
Id q5 = p3 + q4 + q6 + -p4;

#endprocedure
*--#]d158l2:

*--#[d159l2:
L [d159l2|3.4.4.5|i.3.4|o||o.i|] = 1*i_* prop(-1,0,q1)*d_(nu1,nu2)*i_* prop(-1,2,q2)*i_* prop(-1,0,q3)*d_(nu5,nu6)*i_* prop(-1,0,q4)*d_(nu7,nu8)*i_* prop(-1,2,q5)*i_* prop(-1,2,q6)*i_*e*qch1*(p3(nu1)-p4(nu1))*i_*e*qch2*(p1(nu5)-q2(nu5))*i_*e*qch2*(q2(nu7)-p2(nu7))*i_*e*qch2*(q5(nu6)-q6(nu6))*2*i_*qch2^2*e^2*d_(nu2,nu8);
#procedure momentumRouting
Id q2 = p2 + q4;
Id p1 = p2 + p4 + -p3;
Id q1 = p3 + -p4;
Id q3 = p4 + -p3 + -q4;
Id q5 = p3 + q4 + q6 + -p4;

#endprocedure
*--#]d159l2:

*--#[d160l2:
L [d160l2|i.4.5|o.i.3|4.4.5||o|] = 1*i_* prop(-1,0,q1)*d_(nu1,nu2)*i_* prop(-1,0,q2)*d_(nu3,nu4)*i_* prop(-1,2,q3)*i_* prop(-1,2,q4)*i_* prop(-1,2,q5)*i_* prop(-1,0,q6)*d_(nu1 1,nu1 2)*i_*e*qch1*(p3(nu1)-p4(nu1))*i_*e*qch2*(p1(nu3)-q3(nu3))*i_*e*qch2*(q4(nu4)-p2(nu4))*i_*e*qch2*(q3(nu1 1)-q5(nu1 1))*2*i_*qch2^2*e^2*d_(nu1 2,nu2);
#procedure momentumRouting
Id p1 = p2 + p4 + -p3;
Id q4 = p2 + -q2;
Id q1 = p3 + -p4;
Id q3 = p2 + p4 + -p3 + -q2;
Id q5 = p2 + p4 + -p3 + -q2 + -q6;

#endprocedure
*--#]d160l2:

*--#[d161l2:
L [d161l2|o.3.5|o.i.5|i.4|5.5||] = 1*i_* prop(-1,0,q1)*d_(nu1,nu2)*i_* prop(-1,1,q2)*i_* prop(-1,0,q3)*d_(nu5,nu6)*i_* prop(-1,0,q4)*d_(nu7,nu8)*i_* prop(-1,1,q5)*i_* prop(-1,1,q6)*i_*e*qch2*(p1(nu1)-p2(nu1))*i_*e*qch1*(q2(nu5)-p4(nu5))*i_*e*qch1*(p3(nu7)-q2(nu7))*i_*e*qch1*(q5(nu6)-q6(nu6))*2*i_*qch1^2*e^2*d_(nu2,nu8);
#procedure momentumRouting
Id q2 = p3 + -q4;
Id p1 = p2 + p4 + -p3;
Id q1 = p4 + -p3;
Id q3 = p3 + -p4 + -q4;
Id q5 = p4 + q4 + q6 + -p3;

#endprocedure
*--#]d161l2:

*--#[d162l2:
L [d162l2|2.2.4.5|3|o.4|i|o.i|] = 1*i_* prop(-1,0,q1)*d_(nu1,nu2)*i_* prop(-1,1,q2)*i_* prop(-1,0,q3)*d_(nu5,nu6)*i_* prop(-1,0,q4)*d_(nu7,nu8)*i_* prop(-1,2,q5)*i_* prop(-1,2,q6)*i_*e*qch2*(p1(nu1)-p2(nu1))*i_*e*qch1*(q2(nu5)-p4(nu5))*i_*e*qch1*(p3(nu7)-q2(nu7))*i_*e*qch2*(q5(nu6)-q6(nu6))*2*i_*qch2^2*e^2*d_(nu2,nu8);
#procedure momentumRouting
Id q2 = p3 + -q4;
Id p1 = p2 + p4 + -p3;
Id q1 = p4 + -p3;
Id q3 = p3 + -p4 + -q4;
Id q5 = p4 + q4 + q6 + -p3;

#endprocedure
*--#]d162l2:

*--#[d163l2:
L [d163l2|i.3.5|3.4.5.5|o|o.i||] = 1*i_* prop(-1,0,q1)*d_(nu1,nu2)*i_* prop(-1,0,q2)*d_(nu3,nu4)*i_* prop(-1,1,q3)*i_* prop(-1,1,q4)*i_* prop(-1,1,q5)*i_* prop(-1,0,q6)*d_(nu1 1,nu1 2)*i_*e*qch2*(p1(nu1)-p2(nu1))*i_*e*qch1*(q3(nu3)-p4(nu3))*i_*e*qch1*(p3(nu4)-q4(nu4))*i_*e*qch1*(q5(nu1 1)-q3(nu1 1))*2*i_*qch1^2*e^2*d_(nu1 2,nu2);
#procedure momentumRouting
Id p1 = p2 + p4 + -p3;
Id q4 = p3 + q2;
Id q1 = p4 + -p3;
Id q3 = p4 + q2;
Id q5 = p4 + q2 + q6;

#endprocedure
*--#]d163l2:

*--#[d164l2:
L [d164l2|3.4.4.5|i.3.4|o||o.i|] = 1*i_* prop(-1,0,q1)*d_(nu1,nu2)*i_* prop(-1,1,q2)*i_* prop(-1,0,q3)*d_(nu5,nu6)*i_* prop(-1,0,q4)*d_(nu7,nu8)*i_* prop(-1,1,q5)*i_* prop(-1,1,q6)*i_*e*qch2*(p1(nu1)-p2(nu1))*i_*e*qch1*(p3(nu5)-q2(nu5))*i_*e*qch1*(q2(nu7)-p4(nu7))*i_*e*qch1*(q5(nu6)-q6(nu6))*2*i_*qch1^2*e^2*d_(nu2,nu8);
#procedure momentumRouting
Id q2 = p4 + q4;
Id p1 = p2 + p4 + -p3;
Id q1 = p4 + -p3;
Id q3 = p3 + -p4 + -q4;
Id q5 = p4 + q4 + q6 + -p3;

#endprocedure
*--#]d164l2:

*--#[d165l2:
L [d165l2|2.5.5|o.3|i.5|o.i.5||] = 1*i_* prop(-1,0,q1)*d_(nu1,nu2)*i_* prop(-1,1,q2)*i_* prop(-1,0,q3)*d_(nu5,nu6)*i_* prop(-1,0,q4)*d_(nu7,nu8)*i_* prop(-1,2,q5)*i_* prop(-1,2,q6)*i_*e*qch2*(p1(nu1)-p2(nu1))*i_*e*qch1*(p3(nu5)-q2(nu5))*i_*e*qch1*(q2(nu7)-p4(nu7))*i_*e*qch2*(q5(nu6)-q6(nu6))*2*i_*qch2^2*e^2*d_(nu2,nu8);
#procedure momentumRouting
Id q2 = p4 + q4;
Id p1 = p2 + p4 + -p3;
Id q1 = p4 + -p3;
Id q3 = p3 + -p4 + -q4;
Id q5 = p4 + q4 + q6 + -p3;

#endprocedure
*--#]d165l2:

*--#[d166l2:
L [d166l2|i.4.5|o.i.3|4.4.5||o|] = 1*i_* prop(-1,0,q1)*d_(nu1,nu2)*i_* prop(-1,0,q2)*d_(nu3,nu4)*i_* prop(-1,1,q3)*i_* prop(-1,1,q4)*i_* prop(-1,1,q5)*i_* prop(-1,0,q6)*d_(nu1 1,nu1 2)*i_*e*qch2*(p1(nu1)-p2(nu1))*i_*e*qch1*(p3(nu3)-q3(nu3))*i_*e*qch1*(q4(nu4)-p4(nu4))*i_*e*qch1*(q3(nu1 1)-q5(nu1 1))*2*i_*qch1^2*e^2*d_(nu1 2,nu2);
#procedure momentumRouting
Id p1 = p2 + p4 + -p3;
Id q4 = p4 + -q2;
Id q1 = p4 + -p3;
Id q3 = p3 + -q2;
Id q5 = p3 + -q2 + -q6;

#endprocedure
*--#]d166l2:

*--#[d167l2:
L [d167l2|2.3.5|o.i|i.5|o.5.5||] = 1*i_* prop(-1,0,q1)*d_(nu1,nu2)*i_* prop(-1,2,q2)*i_* prop(-1,0,q3)*d_(nu5,nu6)*i_* prop(-1,2,q4)*i_* prop(-1,0,q5)*d_(nu9,nu1 0)*i_* prop(-1,2,q6)*i_*e*qch1*(p3(nu1)-p4(nu1))*i_*e*qch2*(q2(nu5)-p2(nu5))*i_*e*qch2*(p1(nu9)-q4(nu9))*i_*e*qch2*(q6(nu2)-q2(nu2))*2*i_*qch2^2*e^2*d_(nu1 0,nu6);
#procedure momentumRouting
Id q2 = p2 + q3;
Id q4 = p2 + p4 + -p3 + -q5;
Id p1 = p2 + p4 + -p3;
Id q1 = p3 + -p4;
Id q6 = p2 + p4 + q3 + -p3;

#endprocedure
*--#]d167l2:

*--#[d168l2:
L [d168l2|2.3.4|o.i|i.4|5.5|o|] = 1*i_* prop(-1,0,q1)*d_(nu1,nu2)*i_* prop(-1,2,q2)*i_* prop(-1,0,q3)*d_(nu5,nu6)*i_* prop(-1,2,q4)*i_* prop(-1,0,q5)*d_(nu9,nu1 0)*i_* prop(-1,2,q6)*i_*e*qch1*(p3(nu1)-p4(nu1))*i_*e*qch2*(p1(nu5)-q2(nu5))*i_*e*qch2*(q4(nu9)-p2(nu9))*i_*e*qch2*(q2(nu2)-q6(nu2))*2*i_*qch2^2*e^2*d_(nu1 0,nu6);
#procedure momentumRouting
Id q2 = p2 + p4 + -p3 + -q3;
Id q4 = p2 + q5;
Id p1 = p2 + p4 + -p3;
Id q1 = p3 + -p4;
Id q6 = p2 + -q3;

#endprocedure
*--#]d168l2:

*--#[d169l2:
L [d169l2|2.3.5|o.i|i.5|o.5.5||] = 1*i_* prop(-1,0,q1)*d_(nu1,nu2)*i_* prop(-1,1,q2)*i_* prop(-1,0,q3)*d_(nu5,nu6)*i_* prop(-1,1,q4)*i_* prop(-1,0,q5)*d_(nu9,nu1 0)*i_* prop(-1,1,q6)*i_*e*qch2*(p1(nu1)-p2(nu1))*i_*e*qch1*(q2(nu5)-p4(nu5))*i_*e*qch1*(p3(nu9)-q4(nu9))*i_*e*qch1*(q6(nu2)-q2(nu2))*2*i_*qch1^2*e^2*d_(nu1 0,nu6);
#procedure momentumRouting
Id q2 = p4 + q3;
Id q4 = p3 + -q5;
Id p1 = p2 + p4 + -p3;
Id q1 = p4 + -p3;
Id q6 = p3 + q3;

#endprocedure
*--#]d169l2:

*--#[d170l2:
L [d170l2|2.3.4|o.i|i.4|5.5|o|] = 1*i_* prop(-1,0,q1)*d_(nu1,nu2)*i_* prop(-1,1,q2)*i_* prop(-1,0,q3)*d_(nu5,nu6)*i_* prop(-1,1,q4)*i_* prop(-1,0,q5)*d_(nu9,nu1 0)*i_* prop(-1,1,q6)*i_*e*qch2*(p1(nu1)-p2(nu1))*i_*e*qch1*(p3(nu5)-q2(nu5))*i_*e*qch1*(q4(nu9)-p4(nu9))*i_*e*qch1*(q2(nu2)-q6(nu2))*2*i_*qch1^2*e^2*d_(nu1 0,nu6);
#procedure momentumRouting
Id q2 = p3 + -q3;
Id q4 = p4 + q5;
Id p1 = p2 + p4 + -p3;
Id q1 = p4 + -p3;
Id q6 = p4 + -q3;

#endprocedure
*--#]d170l2:

*--#[d171l2:
L [d171l2|o.i.4|i.3.5|4.4.5||o|] = 1*i_* prop(-1,0,q1)*d_(nu1,nu2)*i_* prop(-1,2,q2)*i_* prop(-1,0,q3)*d_(nu5,nu6)*i_* prop(-1,0,q4)*d_(nu7,nu8)*i_* prop(-1,1,q5)*i_* prop(-1,1,q6)*i_*e*qch1*(p3(nu1)-p4(nu1))*i_*e*qch2*(q2(nu5)-p2(nu5))*i_*e*qch2*(p1(nu7)-q2(nu7))*i_*e*qch1*(q5(nu2)-q6(nu2))*2*i_*qch1^2*e^2*d_(nu6,nu8);
#procedure momentumRouting
Id q2 = p2 + p4 + -p3 + -q4;
Id p1 = p2 + p4 + -p3;
Id q1 = p3 + -p4;
Id q3 = p4 + -p3 + -q4;
Id q5 = p4 + q6 + -p3;

#endprocedure
*--#]d171l2:

*--#[d172l2:
L [d172l2|3.4.4.5|o.i.4|i.5||o|] = 1*i_* prop(-1,0,q1)*d_(nu1,nu2)*i_* prop(-1,2,q2)*i_* prop(-1,0,q3)*d_(nu5,nu6)*i_* prop(-1,0,q4)*d_(nu7,nu8)*i_* prop(-1,2,q5)*i_* prop(-1,2,q6)*i_*e*qch1*(p3(nu1)-p4(nu1))*i_*e*qch2*(q2(nu5)-p2(nu5))*i_*e*qch2*(p1(nu7)-q2(nu7))*i_*e*qch2*(q5(nu2)-q6(nu2))*2*i_*qch2^2*e^2*d_(nu6,nu8);
#procedure momentumRouting
Id q2 = p2 + p4 + -p3 + -q4;
Id p1 = p2 + p4 + -p3;
Id q1 = p3 + -p4;
Id q3 = p4 + -p3 + -q4;
Id q5 = p4 + q6 + -p3;

#endprocedure
*--#]d172l2:

*--#[d173l2:
L [d173l2|3.4.4.5|o.i.4|i.5||o|] = 1*i_* prop(-1,0,q1)*d_(nu1,nu2)*i_* prop(-1,1,q2)*i_* prop(-1,0,q3)*d_(nu5,nu6)*i_* prop(-1,0,q4)*d_(nu7,nu8)*i_* prop(-1,1,q5)*i_* prop(-1,1,q6)*i_*e*qch2*(p1(nu1)-p2(nu1))*i_*e*qch1*(q2(nu5)-p4(nu5))*i_*e*qch1*(p3(nu7)-q2(nu7))*i_*e*qch1*(q5(nu2)-q6(nu2))*2*i_*qch1^2*e^2*d_(nu6,nu8);
#procedure momentumRouting
Id q2 = p3 + -q4;
Id p1 = p2 + p4 + -p3;
Id q1 = p4 + -p3;
Id q3 = p3 + -p4 + -q4;
Id q5 = p3 + q6 + -p4;

#endprocedure
*--#]d173l2:

*--#[d174l2:
L [d174l2|o.i.4|i.3.5|4.4.5||o|] = 1*i_* prop(-1,0,q1)*d_(nu1,nu2)*i_* prop(-1,1,q2)*i_* prop(-1,0,q3)*d_(nu5,nu6)*i_* prop(-1,0,q4)*d_(nu7,nu8)*i_* prop(-1,2,q5)*i_* prop(-1,2,q6)*i_*e*qch2*(p1(nu1)-p2(nu1))*i_*e*qch1*(q2(nu5)-p4(nu5))*i_*e*qch1*(p3(nu7)-q2(nu7))*i_*e*qch2*(q5(nu2)-q6(nu2))*2*i_*qch2^2*e^2*d_(nu6,nu8);
#procedure momentumRouting
Id q2 = p3 + -q4;
Id p1 = p2 + p4 + -p3;
Id q1 = p4 + -p3;
Id q3 = p3 + -p4 + -q4;
Id q5 = p3 + q6 + -p4;

#endprocedure
*--#]d174l2:

*--#[d175l2:
L [d175l2|2.3.4.5|i.4|i.5|o|o|] = 1*i_* prop(-1,1,q1)*i_* prop(-1,0,q2)*d_(nu3,nu4)*i_* prop(-1,0,q3)*d_(nu5,nu6)*i_* prop(-1,0,q4)*d_(nu7,nu8)*i_* prop(-1,2,q5)*i_* prop(-1,2,q6)*i_*e*qch1*(q1(nu3)-p4(nu3))*i_*e*qch1*(p3(nu5)-q1(nu5))*i_*e*qch2*(q5(nu7)-p2(nu7))*i_*e*qch2*(p1(nu8)-q6(nu8))*2*i_*qch2^2*e^2*d_(nu4,nu6);
#procedure momentumRouting
Id q2 = p3 + -p4 + -q3;
Id p1 = p2 + p4 + -p3;
Id q1 = p3 + -q3;
Id q6 = p2 + p4 + q4 + -p3;
Id q5 = p2 + q4;

#endprocedure
*--#]d175l2:

*--#[d176l2:
L [d176l2|2.3.4.5|i.4|i.5|o|o|] = 1*i_* prop(-1,0,q1)*d_(nu1,nu2)*i_* prop(-1,1,q2)*i_* prop(-1,1,q3)*i_* prop(-1,2,q4)*i_* prop(-1,0,q5)*d_(nu9,nu1 0)*i_* prop(-1,0,q6)*d_(nu1 1,nu1 2)*i_*e*qch1*(q2(nu1)-p4(nu1))*i_*e*qch1*(p3(nu2)-q3(nu2))*i_*e*qch2*(q4(nu9)-p2(nu9))*i_*e*qch2*(p1(nu1 1)-q4(nu1 1));
#procedure momentumRouting
Id q2 = p4 + q1;
Id q4 = p2 + p4 + -p3 + -q6;
Id p1 = p2 + p4 + -p3;
Id q3 = p3 + q1;
Id q5 = p4 + -p3 + -q6;

#endprocedure
*--#]d176l2:

*--#[d177l2:
L [d177l2|i.2.4|3.5.5|o.4|i|o|] = 1*i_* prop(-1,0,q1)*d_(nu1,nu2)*i_* prop(-1,1,q2)*i_* prop(-1,2,q3)*i_* prop(-1,0,q4)*d_(nu7,nu8)*i_* prop(-1,2,q5)*i_* prop(-1,0,q6)*d_(nu1 1,nu1 2)*i_*e*qch1*(q2(nu1)-p4(nu1))*i_*e*qch2*(q3(nu2)-p2(nu2))*i_*e*qch1*(p3(nu7)-q2(nu7))*i_*e*qch2*(p1(nu1 1)-q5(nu1 1));
#procedure momentumRouting
Id q2 = p3 + -q4;
Id p1 = p2 + p4 + -p3;
Id q1 = p3 + -p4 + -q4;
Id q3 = p2 + p4 + q4 + -p3;
Id q5 = p2 + p4 + -p3 + -q6;

#endprocedure
*--#]d177l2:

*--#[d178l2:
L [d178l2|2.3.3.5|i.4|o|o.5|i|] = 1*i_* prop(-1,1,q1)*i_* prop(-1,0,q2)*d_(nu3,nu4)*i_* prop(-1,0,q3)*d_(nu5,nu6)*i_* prop(-1,2,q4)*i_* prop(-1,2,q5)*i_* prop(-1,0,q6)*d_(nu1 1,nu1 2)*i_*e*qch1*(q1(nu3)-p4(nu3))*i_*e*qch1*(p3(nu5)-q1(nu5))*i_*e*qch2*(p1(nu4)-q4(nu4))*i_*e*qch2*(q5(nu1 1)-p2(nu1 1))*2*i_*qch2^2*e^2*d_(nu1 2,nu6);
#procedure momentumRouting
Id q2 = p3 + -p4 + -q3;
Id q4 = p2 + -q3;
Id p1 = p2 + p4 + -p3;
Id q1 = p3 + -q3;
Id q5 = p2 + q6;

#endprocedure
*--#]d178l2:

*--#[d179l2:
L [d179l2|i.2.4|3.5.5|o.4|i|o|] = 1*i_* prop(-1,0,q1)*d_(nu1,nu2)*i_* prop(-1,2,q2)*i_* prop(-1,1,q3)*i_* prop(-1,0,q4)*d_(nu7,nu8)*i_* prop(-1,1,q5)*i_* prop(-1,0,q6)*d_(nu1 1,nu1 2)*i_*e*qch2*(q2(nu1)-p2(nu1))*i_*e*qch1*(q3(nu2)-p4(nu2))*i_*e*qch2*(p1(nu7)-q2(nu7))*i_*e*qch1*(p3(nu1 1)-q5(nu1 1));
#procedure momentumRouting
Id q2 = p2 + p4 + -p3 + -q4;
Id p1 = p2 + p4 + -p3;
Id q1 = p4 + -p3 + -q4;
Id q3 = p3 + q4;
Id q5 = p3 + -q6;

#endprocedure
*--#]d179l2:

*--#[d180l2:
L [d180l2|2.3.3.5|i.4|o|o.5|i|] = 1*i_* prop(-1,0,q1)*d_(nu1,nu2)*i_* prop(-1,2,q2)*i_* prop(-1,1,q3)*i_* prop(-1,0,q4)*d_(nu7,nu8)*i_* prop(-1,1,q5)*i_* prop(-1,0,q6)*d_(nu1 1,nu1 2)*i_*e*qch2*(q2(nu1)-p2(nu1))*i_*e*qch1*(p3(nu2)-q3(nu2))*i_*e*qch2*(p1(nu7)-q2(nu7))*i_*e*qch1*(q5(nu1 1)-p4(nu1 1));
#procedure momentumRouting
Id q2 = p2 + p4 + -p3 + -q4;
Id p1 = p2 + p4 + -p3;
Id q1 = p4 + -p3 + -q4;
Id q3 = p4 + -q4;
Id q5 = p4 + q6;

#endprocedure
*--#]d180l2:

*--#[d181l2:
L [d181l2|o.4.5|3.3.4.5|o|i|i|] = 1*i_* prop(-1,1,q1)*i_* prop(-1,0,q2)*d_(nu3,nu4)*i_* prop(-1,0,q3)*d_(nu5,nu6)*i_* prop(-1,2,q4)*i_* prop(-1,2,q5)*i_* prop(-1,0,q6)*d_(nu1 1,nu1 2)*i_*e*qch1*(p3(nu3)-q1(nu3))*i_*e*qch1*(q1(nu5)-p4(nu5))*i_*e*qch2*(q4(nu4)-p2(nu4))*i_*e*qch2*(p1(nu1 1)-q5(nu1 1))*2*i_*qch2^2*e^2*d_(nu1 2,nu6);
#procedure momentumRouting
Id q2 = p3 + -p4 + -q3;
Id q4 = p2 + p4 + q3 + -p3;
Id p1 = p2 + p4 + -p3;
Id q1 = p4 + q3;
Id q5 = p2 + p4 + -p3 + -q6;

#endprocedure
*--#]d181l2:

*--#[d182l2:
L [d182l2|o.2.4|o.3|i.4|5.5|i|] = 1*i_* prop(-1,1,q1)*i_* prop(-1,0,q2)*d_(nu3,nu4)*i_* prop(-1,0,q3)*d_(nu5,nu6)*i_* prop(-1,2,q4)*i_* prop(-1,2,q5)*i_* prop(-1,0,q6)*d_(nu1 1,nu1 2)*i_*e*qch1*(p3(nu3)-q1(nu3))*i_*e*qch1*(q1(nu5)-p4(nu5))*i_*e*qch2*(p1(nu4)-q4(nu4))*i_*e*qch2*(q5(nu1 1)-p2(nu1 1))*2*i_*qch2^2*e^2*d_(nu1 2,nu6);
#procedure momentumRouting
Id q2 = p3 + -p4 + -q3;
Id q4 = p2 + -q3;
Id p1 = p2 + p4 + -p3;
Id q1 = p4 + q3;
Id q5 = p2 + q6;

#endprocedure
*--#]d182l2:

*--#[d183l2:
L [d183l2|o.4.5|3.3.4.5|o|i|i|] = 1*i_* prop(-1,0,q1)*d_(nu1,nu2)*i_* prop(-1,2,q2)*i_* prop(-1,1,q3)*i_* prop(-1,0,q4)*d_(nu7,nu8)*i_* prop(-1,1,q5)*i_* prop(-1,0,q6)*d_(nu1 1,nu1 2)*i_*e*qch2*(p1(nu1)-q2(nu1))*i_*e*qch1*(q3(nu2)-p4(nu2))*i_*e*qch2*(q2(nu7)-p2(nu7))*i_*e*qch1*(p3(nu1 1)-q5(nu1 1));
#procedure momentumRouting
Id q2 = p2 + q4;
Id p1 = p2 + p4 + -p3;
Id q1 = p4 + -p3 + -q4;
Id q3 = p3 + q4;
Id q5 = p3 + -q6;

#endprocedure
*--#]d183l2:

*--#[d184l2:
L [d184l2|o.2.4|o.3|i.4|5.5|i|] = 1*i_* prop(-1,2,q1)*i_* prop(-1,0,q2)*d_(nu3,nu4)*i_* prop(-1,0,q3)*d_(nu5,nu6)*i_* prop(-1,1,q4)*i_* prop(-1,1,q5)*i_* prop(-1,0,q6)*d_(nu1 1,nu1 2)*i_*e*qch2*(p1(nu3)-q1(nu3))*i_*e*qch2*(q1(nu5)-p2(nu5))*i_*e*qch1*(p3(nu4)-q4(nu4))*i_*e*qch1*(q5(nu1 1)-p4(nu1 1))*2*i_*qch1^2*e^2*d_(nu1 2,nu6);
#procedure momentumRouting
Id q2 = p4 + -p3 + -q3;
Id q4 = p4 + -q3;
Id p1 = p2 + p4 + -p3;
Id q1 = p2 + q3;
Id q5 = p4 + q6;

#endprocedure
*--#]d184l2:

*--#[d185l2:
L [d185l2|o.i.3|3.4.5|5|5.6||o.i|] = 1*i_* prop(-1,0,q1)*d_(nu1,nu2)*i_* prop(-1,0,q2)*d_(nu3,nu4)*i_* prop(-1,1,q3)*i_* prop(-1,1,q4)*i_* prop(-1,1,q5)*i_* prop(-1,1,q6)*i_* prop(-1,0,q7)*d_(nu1 3,nu1 4)*i_*e*qch1*(p3(nu1)-p4(nu1))*i_*e*qch2*(p1(nu3)-p2(nu3))*i_*e*qch1*(q4(nu2)-q3(nu2))*i_*e*qch1*(q5(nu4)-q6(nu4))*i_*e*qch1*(q3(nu1 3)-q5(nu1 3))*i_*e*qch1*(q6(nu1 4)-q4(nu1 4));
#procedure momentumRouting
Id q2 = p4 + -p3;
Id q4 = q6 + q7;
Id p1 = p2 + p4 + -p3;
Id q1 = p3 + -p4;
Id q3 = p3 + q6 + q7 + -p4;
Id q5 = p3 + q6 + -p4;

#endprocedure
*--#]d185l2:

*--#[d186l2:
L [d186l2|2.4.5|4.5|o.i.5|6||o.i|] = 1*i_* prop(-1,0,q1)*d_(nu1,nu2)*i_* prop(-1,0,q2)*d_(nu3,nu4)*i_* prop(-1,2,q3)*i_* prop(-1,2,q4)*i_* prop(-1,2,q5)*i_* prop(-1,2,q6)*i_* prop(-1,0,q7)*d_(nu1 3,nu1 4)*i_*e*qch1*(p3(nu1)-p4(nu1))*i_*e*qch2*(p1(nu3)-p2(nu3))*i_*e*qch2*(q4(nu2)-q3(nu2))*i_*e*qch2*(q5(nu4)-q6(nu4))*i_*e*qch2*(q3(nu1 3)-q5(nu1 3))*i_*e*qch2*(q6(nu1 4)-q4(nu1 4));
#procedure momentumRouting
Id q2 = p4 + -p3;
Id q4 = q6 + q7;
Id p1 = p2 + p4 + -p3;
Id q1 = p3 + -p4;
Id q3 = p3 + q6 + q7 + -p4;
Id q5 = p3 + q6 + -p4;

#endprocedure
*--#]d186l2:

*--#[d187l2:
L [d187l2|o.i.4|3.3.5|6|6.6|o.i||] = 1*i_* prop(-1,0,q1)*d_(nu1,nu2)*i_* prop(-1,0,q2)*d_(nu3,nu4)*i_* prop(-1,1,q3)*i_* prop(-1,1,q4)*i_* prop(-1,1,q5)*i_* prop(-1,1,q6)*i_* prop(-1,0,q7)*d_(nu1 3,nu1 4)*i_*e*qch1*(p3(nu1)-p4(nu1))*i_*e*qch2*(p1(nu3)-p2(nu3))*i_*e*qch1*(q4(nu2)-q3(nu2))*i_*e*qch1*(q6(nu4)-q5(nu4))*i_*e*qch1*(q3(nu1 3)-q4(nu1 3))*i_*e*qch1*(q5(nu1 4)-q6(nu1 4));
#procedure momentumRouting
Id q2 = p4 + -p3;
Id q7 = p3 + -p4;
Id p1 = p2 + p4 + -p3;
Id q1 = p3 + -p4;
Id q3 = p3 + q4 + -p4;
Id q5 = p4 + q6 + -p3;

#endprocedure
*--#]d187l2:

*--#[d188l2:
L [d188l2|o.i.4|o.i.5|4.4.6||6.6||] = 1*i_* prop(-1,0,q1)*d_(nu1,nu2)*i_* prop(-1,0,q2)*d_(nu3,nu4)*i_* prop(-1,1,q3)*i_* prop(-1,1,q4)*i_* prop(-1,2,q5)*i_* prop(-1,2,q6)*i_* prop(-1,0,q7)*d_(nu1 3,nu1 4)*i_*e*qch1*(p3(nu1)-p4(nu1))*i_*e*qch2*(p1(nu3)-p2(nu3))*i_*e*qch1*(q4(nu2)-q3(nu2))*i_*e*qch2*(q6(nu4)-q5(nu4))*i_*e*qch1*(q3(nu1 3)-q4(nu1 3))*i_*e*qch2*(q5(nu1 4)-q6(nu1 4));
#procedure momentumRouting
Id q2 = p4 + -p3;
Id q7 = p3 + -p4;
Id p1 = p2 + p4 + -p3;
Id q1 = p3 + -p4;
Id q3 = p3 + q4 + -p4;
Id q5 = p4 + q6 + -p3;

#endprocedure
*--#]d188l2:

*--#[d189l2:
L [d189l2|o.i.3|5.5.6|6.6|o.i.5|||] = 1*i_* prop(-1,0,q1)*d_(nu1,nu2)*i_* prop(-1,0,q2)*d_(nu3,nu4)*i_* prop(-1,2,q3)*i_* prop(-1,2,q4)*i_* prop(-1,1,q5)*i_* prop(-1,1,q6)*i_* prop(-1,0,q7)*d_(nu1 3,nu1 4)*i_*e*qch1*(p3(nu1)-p4(nu1))*i_*e*qch2*(p1(nu3)-p2(nu3))*i_*e*qch2*(q4(nu2)-q3(nu2))*i_*e*qch1*(q6(nu4)-q5(nu4))*i_*e*qch2*(q3(nu1 3)-q4(nu1 3))*i_*e*qch1*(q5(nu1 4)-q6(nu1 4));
#procedure momentumRouting
Id q2 = p4 + -p3;
Id q7 = p3 + -p4;
Id p1 = p2 + p4 + -p3;
Id q1 = p3 + -p4;
Id q3 = p3 + q4 + -p4;
Id q5 = p4 + q6 + -p3;

#endprocedure
*--#]d189l2:

*--#[d190l2:
L [d190l2|3.4.4|4.6.6|o.i||o.i.6||] = 1*i_* prop(-1,0,q1)*d_(nu1,nu2)*i_* prop(-1,0,q2)*d_(nu3,nu4)*i_* prop(-1,2,q3)*i_* prop(-1,2,q4)*i_* prop(-1,2,q5)*i_* prop(-1,2,q6)*i_* prop(-1,0,q7)*d_(nu1 3,nu1 4)*i_*e*qch1*(p3(nu1)-p4(nu1))*i_*e*qch2*(p1(nu3)-p2(nu3))*i_*e*qch2*(q4(nu2)-q3(nu2))*i_*e*qch2*(q6(nu4)-q5(nu4))*i_*e*qch2*(q3(nu1 3)-q4(nu1 3))*i_*e*qch2*(q5(nu1 4)-q6(nu1 4));
#procedure momentumRouting
Id q2 = p4 + -p3;
Id q7 = p3 + -p4;
Id p1 = p2 + p4 + -p3;
Id q1 = p3 + -p4;
Id q3 = p3 + q4 + -p4;
Id q5 = p4 + q6 + -p3;

#endprocedure
*--#]d190l2:

*--#[d191l2:
L [d191l2|o.i.6|3.4.6|o.i|5.5|6||] = 1*i_* prop(-1,0,q1)*d_(nu1,nu2)*i_* prop(-1,0,q2)*d_(nu3,nu4)*i_* prop(-1,1,q3)*i_* prop(-1,1,q4)*i_* prop(-1,1,q5)*i_* prop(-1,1,q6)*i_* prop(-1,0,q7)*d_(nu1 3,nu1 4)*i_*e*qch1*(p3(nu1)-p4(nu1))*i_*e*qch2*(p1(nu3)-p2(nu3))*i_*e*qch1*(q4(nu2)-q3(nu2))*i_*e*qch1*(q3(nu4)-q5(nu4))*i_*e*qch1*(q6(nu1 3)-q4(nu1 3))*i_*e*qch1*(q5(nu1 4)-q6(nu1 4));
#procedure momentumRouting
Id q2 = p4 + -p3;
Id q4 = q6 + -q7;
Id p1 = p2 + p4 + -p3;
Id q1 = p3 + -p4;
Id q3 = p3 + q6 + -p4 + -q7;
Id q5 = q6 + -q7;

#endprocedure
*--#]d191l2:

*--#[d192l2:
L [d192l2|o.i.2|3.4|5.6|5.5||o.i|] = 1*i_* prop(-1,0,q1)*d_(nu1,nu2)*i_* prop(-1,0,q2)*d_(nu3,nu4)*i_* prop(-1,1,q3)*i_* prop(-1,1,q4)*i_* prop(-1,1,q5)*i_* prop(-1,1,q6)*i_* prop(-1,0,q7)*d_(nu1 3,nu1 4)*i_*e*qch1*(p3(nu1)-p4(nu1))*i_*e*qch2*(p1(nu3)-p2(nu3))*i_*e*qch1*(q3(nu2)-q4(nu2))*i_*e*qch1*(q5(nu4)-q3(nu4))*i_*e*qch1*(q4(nu1 3)-q6(nu1 3))*i_*e*qch1*(q6(nu1 4)-q5(nu1 4));
#procedure momentumRouting
Id q2 = p4 + -p3;
Id q4 = q6 + q7;
Id p1 = p2 + p4 + -p3;
Id q1 = p3 + -p4;
Id q3 = p4 + q6 + q7 + -p3;
Id q5 = q6 + q7;

#endprocedure
*--#]d192l2:

*--#[d193l2:
L [d193l2|o.i.4|4.5.6|4.6.6||o.i||] = 1*i_* prop(-1,0,q1)*d_(nu1,nu2)*i_* prop(-1,0,q2)*d_(nu3,nu4)*i_* prop(-1,2,q3)*i_* prop(-1,2,q4)*i_* prop(-1,2,q5)*i_* prop(-1,2,q6)*i_* prop(-1,0,q7)*d_(nu1 3,nu1 4)*i_*e*qch1*(p3(nu1)-p4(nu1))*i_*e*qch2*(p1(nu3)-p2(nu3))*i_*e*qch2*(q4(nu2)-q3(nu2))*i_*e*qch2*(q3(nu4)-q5(nu4))*i_*e*qch2*(q6(nu1 3)-q4(nu1 3))*i_*e*qch2*(q5(nu1 4)-q6(nu1 4));
#procedure momentumRouting
Id q2 = p4 + -p3;
Id q4 = q6 + -q7;
Id p1 = p2 + p4 + -p3;
Id q1 = p3 + -p4;
Id q3 = p3 + q6 + -p4 + -q7;
Id q5 = q6 + -q7;

#endprocedure
*--#]d193l2:

*--#[d194l2:
L [d194l2|4.5.6|4.6.6|o.i.4||o.i||] = 1*i_* prop(-1,0,q1)*d_(nu1,nu2)*i_* prop(-1,0,q2)*d_(nu3,nu4)*i_* prop(-1,2,q3)*i_* prop(-1,2,q4)*i_* prop(-1,2,q5)*i_* prop(-1,2,q6)*i_* prop(-1,0,q7)*d_(nu1 3,nu1 4)*i_*e*qch1*(p3(nu1)-p4(nu1))*i_*e*qch2*(p1(nu3)-p2(nu3))*i_*e*qch2*(q3(nu2)-q4(nu2))*i_*e*qch2*(q5(nu4)-q3(nu4))*i_*e*qch2*(q4(nu1 3)-q6(nu1 3))*i_*e*qch2*(q6(nu1 4)-q5(nu1 4));
#procedure momentumRouting
Id q2 = p4 + -p3;
Id q4 = q6 + q7;
Id p1 = p2 + p4 + -p3;
Id q1 = p3 + -p4;
Id q3 = p4 + q6 + q7 + -p3;
Id q5 = q6 + q7;

#endprocedure
*--#]d194l2:

*--#[d195l2:
L [d195l2|i.2.3|4.5|4.5|o|6|o.i|] = 1*i_* prop(-1,0,q1)*d_(nu1,nu2)*i_* prop(-1,2,q2)*i_* prop(-1,0,q3)*d_(nu5,nu6)*i_* prop(-1,0,q4)*d_(nu7,nu8)*i_* prop(-1,2,q5)*i_* prop(-1,2,q6)*i_* prop(-1,2,q7)*i_*e*qch1*(p3(nu1)-p4(nu1))*i_*e*qch2*(q2(nu5)-p2(nu5))*i_*e*qch2*(p1(nu7)-q5(nu7))*i_*e*qch2*(q7(nu2)-q6(nu2))*i_*e*qch2*(q6(nu8)-q2(nu8))*i_*e*qch2*(q5(nu6)-q7(nu6));
#procedure momentumRouting
Id q2 = p2 + q3;
Id q7 = p2 + p4 + q3 + -p3 + -q4;
Id p1 = p2 + p4 + -p3;
Id q1 = p3 + -p4;
Id q6 = p2 + q3 + -q4;
Id q5 = p2 + p4 + -p3 + -q4;

#endprocedure
*--#]d195l2:

*--#[d196l2:
L [d196l2|i.2.3|4.5|4.5|o|6|o.i|] = 1*i_* prop(-1,0,q1)*d_(nu1,nu2)*i_* prop(-1,1,q2)*i_* prop(-1,0,q3)*d_(nu5,nu6)*i_* prop(-1,0,q4)*d_(nu7,nu8)*i_* prop(-1,1,q5)*i_* prop(-1,1,q6)*i_* prop(-1,1,q7)*i_*e*qch2*(p1(nu1)-p2(nu1))*i_*e*qch1*(q2(nu5)-p4(nu5))*i_*e*qch1*(p3(nu7)-q5(nu7))*i_*e*qch1*(q7(nu2)-q6(nu2))*i_*e*qch1*(q6(nu8)-q2(nu8))*i_*e*qch1*(q5(nu6)-q7(nu6));
#procedure momentumRouting
Id q2 = p4 + q3;
Id q7 = p3 + q3 + -q4;
Id p1 = p2 + p4 + -p3;
Id q1 = p4 + -p3;
Id q6 = p4 + q3 + -q4;
Id q5 = p3 + -q4;

#endprocedure
*--#]d196l2:

*--#[d197l2:
L [d197l2|3.4.5|o.i.5|i.4|6|6|o|] = 1*i_* prop(-1,0,q1)*d_(nu1,nu2)*i_* prop(-1,2,q2)*i_* prop(-1,0,q3)*d_(nu5,nu6)*i_* prop(-1,2,q4)*i_* prop(-1,0,q5)*d_(nu9,nu1 0)*i_* prop(-1,2,q6)*i_* prop(-1,2,q7)*i_*e*qch1*(p3(nu1)-p4(nu1))*i_*e*qch2*(q2(nu5)-p2(nu5))*i_*e*qch2*(p1(nu9)-q4(nu9))*i_*e*qch2*(q6(nu2)-q2(nu2))*i_*e*qch2*(q4(nu6)-q7(nu6))*i_*e*qch2*(q7(nu1 0)-q6(nu1 0));
#procedure momentumRouting
Id q2 = p2 + q3;
Id q4 = p2 + p4 + -p3 + -q5;
Id q7 = p2 + p4 + q3 + -p3 + -q5;
Id p1 = p2 + p4 + -p3;
Id q1 = p3 + -p4;
Id q6 = p2 + p4 + q3 + -p3;

#endprocedure
*--#]d197l2:

*--#[d198l2:
L [d198l2|o.2.6|4.5|o.i.6|i.5|6||] = 1*i_* prop(-1,0,q1)*d_(nu1,nu2)*i_* prop(-1,2,q2)*i_* prop(-1,0,q3)*d_(nu5,nu6)*i_* prop(-1,2,q4)*i_* prop(-1,0,q5)*d_(nu9,nu1 0)*i_* prop(-1,2,q6)*i_* prop(-1,2,q7)*i_*e*qch1*(p3(nu1)-p4(nu1))*i_*e*qch2*(p1(nu5)-q2(nu5))*i_*e*qch2*(q4(nu9)-p2(nu9))*i_*e*qch2*(q2(nu2)-q6(nu2))*i_*e*qch2*(q7(nu6)-q4(nu6))*i_*e*qch2*(q6(nu1 0)-q7(nu1 0));
#procedure momentumRouting
Id q2 = p2 + p4 + -p3 + -q3;
Id q4 = p2 + q5;
Id q7 = p2 + q5 + -q3;
Id p1 = p2 + p4 + -p3;
Id q1 = p3 + -p4;
Id q6 = p2 + -q3;

#endprocedure
*--#]d198l2:

*--#[d199l2:
L [d199l2|3.4.5|o.i.5|i.4|6|6|o|] = 1*i_* prop(-1,0,q1)*d_(nu1,nu2)*i_* prop(-1,1,q2)*i_* prop(-1,0,q3)*d_(nu5,nu6)*i_* prop(-1,1,q4)*i_* prop(-1,0,q5)*d_(nu9,nu1 0)*i_* prop(-1,1,q6)*i_* prop(-1,1,q7)*i_*e*qch2*(p1(nu1)-p2(nu1))*i_*e*qch1*(q2(nu5)-p4(nu5))*i_*e*qch1*(p3(nu9)-q4(nu9))*i_*e*qch1*(q6(nu2)-q2(nu2))*i_*e*qch1*(q4(nu6)-q7(nu6))*i_*e*qch1*(q7(nu1 0)-q6(nu1 0));
#procedure momentumRouting
Id q2 = p4 + q3;
Id q4 = p3 + -q5;
Id q7 = p3 + q3 + -q5;
Id p1 = p2 + p4 + -p3;
Id q1 = p4 + -p3;
Id q6 = p3 + q3;

#endprocedure
*--#]d199l2:

*--#[d200l2:
L [d200l2|o.2.6|4.5|o.i.6|i.5|6||] = 1*i_* prop(-1,0,q1)*d_(nu1,nu2)*i_* prop(-1,1,q2)*i_* prop(-1,0,q3)*d_(nu5,nu6)*i_* prop(-1,1,q4)*i_* prop(-1,0,q5)*d_(nu9,nu1 0)*i_* prop(-1,1,q6)*i_* prop(-1,1,q7)*i_*e*qch2*(p1(nu1)-p2(nu1))*i_*e*qch1*(p3(nu5)-q2(nu5))*i_*e*qch1*(q4(nu9)-p4(nu9))*i_*e*qch1*(q2(nu2)-q6(nu2))*i_*e*qch1*(q7(nu6)-q4(nu6))*i_*e*qch1*(q6(nu1 0)-q7(nu1 0));
#procedure momentumRouting
Id q2 = p3 + -q3;
Id q4 = p4 + q5;
Id q7 = p4 + q5 + -q3;
Id p1 = p2 + p4 + -p3;
Id q1 = p4 + -p3;
Id q6 = p4 + -q3;

#endprocedure
*--#]d200l2:

*--#[d201l2:
L [d201l2|3.4.4|3.5.6|o|6|o.i|i|] = 1*i_* prop(-1,0,q1)*d_(nu1,nu2)*i_* prop(-1,2,q2)*i_* prop(-1,0,q3)*d_(nu5,nu6)*i_* prop(-1,2,q4)*i_* prop(-1,0,q5)*d_(nu9,nu1 0)*i_* prop(-1,1,q6)*i_* prop(-1,1,q7)*i_*e*qch1*(p3(nu1)-p4(nu1))*i_*e*qch2*(q2(nu5)-p2(nu5))*i_*e*qch2*(p1(nu9)-q4(nu9))*i_*e*qch2*(q4(nu2)-q2(nu2))*i_*e*qch1*(q7(nu6)-q6(nu6))*i_*e*qch1*(q6(nu1 0)-q7(nu1 0));
#procedure momentumRouting
Id q2 = p2 + -q5;
Id q4 = p2 + p4 + -p3 + -q5;
Id p1 = p2 + p4 + -p3;
Id q1 = p3 + -p4;
Id q3 = -q5;
Id q6 = q7 + -q5;

#endprocedure
*--#]d201l2:

*--#[d202l2:
L [d202l2|3.5.6|4.4.5|i.4||o|o.i|] = 1*i_* prop(-1,0,q1)*d_(nu1,nu2)*i_* prop(-1,2,q2)*i_* prop(-1,0,q3)*d_(nu5,nu6)*i_* prop(-1,2,q4)*i_* prop(-1,0,q5)*d_(nu9,nu1 0)*i_* prop(-1,2,q6)*i_* prop(-1,2,q7)*i_*e*qch1*(p3(nu1)-p4(nu1))*i_*e*qch2*(q2(nu5)-p2(nu5))*i_*e*qch2*(p1(nu9)-q4(nu9))*i_*e*qch2*(q4(nu2)-q2(nu2))*i_*e*qch2*(q7(nu6)-q6(nu6))*i_*e*qch2*(q6(nu1 0)-q7(nu1 0));
#procedure momentumRouting
Id q2 = p2 + -q5;
Id q4 = p2 + p4 + -p3 + -q5;
Id p1 = p2 + p4 + -p3;
Id q1 = p3 + -p4;
Id q3 = -q5;
Id q6 = q7 + -q5;

#endprocedure
*--#]d202l2:

*--#[d203l2:
L [d203l2|3.5.6|4.4.5|i.4||o|o.i|] = 1*i_* prop(-1,0,q1)*d_(nu1,nu2)*i_* prop(-1,1,q2)*i_* prop(-1,0,q3)*d_(nu5,nu6)*i_* prop(-1,1,q4)*i_* prop(-1,0,q5)*d_(nu9,nu1 0)*i_* prop(-1,1,q6)*i_* prop(-1,1,q7)*i_*e*qch2*(p1(nu1)-p2(nu1))*i_*e*qch1*(q2(nu5)-p4(nu5))*i_*e*qch1*(p3(nu9)-q4(nu9))*i_*e*qch1*(q4(nu2)-q2(nu2))*i_*e*qch1*(q7(nu6)-q6(nu6))*i_*e*qch1*(q6(nu1 0)-q7(nu1 0));
#procedure momentumRouting
Id q2 = p4 + -q5;
Id q4 = p3 + -q5;
Id p1 = p2 + p4 + -p3;
Id q1 = p4 + -p3;
Id q3 = -q5;
Id q6 = q7 + -q5;

#endprocedure
*--#]d203l2:

*--#[d204l2:
L [d204l2|3.4.4|3.5.6|o|6|o.i|i|] = 1*i_* prop(-1,0,q1)*d_(nu1,nu2)*i_* prop(-1,1,q2)*i_* prop(-1,0,q3)*d_(nu5,nu6)*i_* prop(-1,1,q4)*i_* prop(-1,0,q5)*d_(nu9,nu1 0)*i_* prop(-1,2,q6)*i_* prop(-1,2,q7)*i_*e*qch2*(p1(nu1)-p2(nu1))*i_*e*qch1*(q2(nu5)-p4(nu5))*i_*e*qch1*(p3(nu9)-q4(nu9))*i_*e*qch1*(q4(nu2)-q2(nu2))*i_*e*qch2*(q7(nu6)-q6(nu6))*i_*e*qch2*(q6(nu1 0)-q7(nu1 0));
#procedure momentumRouting
Id q2 = p4 + -q5;
Id q4 = p3 + -q5;
Id p1 = p2 + p4 + -p3;
Id q1 = p4 + -p3;
Id q3 = -q5;
Id q6 = q7 + -q5;

#endprocedure
*--#]d204l2:

*--#[d205l2:
L [d205l2|2.4.5|5.6|o.i.5|o.6||i|] = 1*i_* prop(-1,0,q1)*d_(nu1,nu2)*i_* prop(-1,2,q2)*i_* prop(-1,0,q3)*d_(nu5,nu6)*i_* prop(-1,0,q4)*d_(nu7,nu8)*i_* prop(-1,1,q5)*i_* prop(-1,1,q6)*i_* prop(-1,1,q7)*i_*e*qch1*(p3(nu1)-p4(nu1))*i_*e*qch2*(q2(nu5)-p2(nu5))*i_*e*qch2*(p1(nu7)-q2(nu7))*i_*e*qch1*(q6(nu2)-q5(nu2))*i_*e*qch1*(q5(nu6)-q7(nu6))*i_*e*qch1*(q7(nu8)-q6(nu8));
#procedure momentumRouting
Id q2 = p2 + p4 + -p3 + -q4;
Id p1 = p2 + p4 + -p3;
Id q1 = p3 + -p4;
Id q3 = p4 + -p3 + -q4;
Id q6 = q4 + q7;
Id q5 = p3 + q4 + q7 + -p4;

#endprocedure
*--#]d205l2:

*--#[d206l2:
L [d206l2|i.2.3|4.5|o.5|5.6||o.i|] = 1*i_* prop(-1,0,q1)*d_(nu1,nu2)*i_* prop(-1,2,q2)*i_* prop(-1,0,q3)*d_(nu5,nu6)*i_* prop(-1,0,q4)*d_(nu7,nu8)*i_* prop(-1,1,q5)*i_* prop(-1,1,q6)*i_* prop(-1,1,q7)*i_*e*qch1*(p3(nu1)-p4(nu1))*i_*e*qch2*(q2(nu5)-p2(nu5))*i_*e*qch2*(p1(nu7)-q2(nu7))*i_*e*qch1*(q5(nu2)-q6(nu2))*i_*e*qch1*(q7(nu6)-q5(nu6))*i_*e*qch1*(q6(nu8)-q7(nu8));
#procedure momentumRouting
Id q2 = p2 + p4 + -p3 + -q4;
Id p1 = p2 + p4 + -p3;
Id q1 = p3 + -p4;
Id q3 = p4 + -p3 + -q4;
Id q6 = q7 + -q4;
Id q5 = p4 + q7 + -p3 + -q4;

#endprocedure
*--#]d206l2:

*--#[d207l2:
L [d207l2|o.i.2|3.5|5.6|o.5.6||i|] = 1*i_* prop(-1,0,q1)*d_(nu1,nu2)*i_* prop(-1,2,q2)*i_* prop(-1,0,q3)*d_(nu5,nu6)*i_* prop(-1,0,q4)*d_(nu7,nu8)*i_* prop(-1,2,q5)*i_* prop(-1,2,q6)*i_* prop(-1,2,q7)*i_*e*qch1*(p3(nu1)-p4(nu1))*i_*e*qch2*(q2(nu5)-p2(nu5))*i_*e*qch2*(p1(nu7)-q2(nu7))*i_*e*qch2*(q6(nu2)-q5(nu2))*i_*e*qch2*(q5(nu6)-q7(nu6))*i_*e*qch2*(q7(nu8)-q6(nu8));
#procedure momentumRouting
Id q2 = p2 + p4 + -p3 + -q4;
Id p1 = p2 + p4 + -p3;
Id q1 = p3 + -p4;
Id q3 = p4 + -p3 + -q4;
Id q6 = q4 + q7;
Id q5 = p3 + q4 + q7 + -p4;

#endprocedure
*--#]d207l2:

*--#[d208l2:
L [d208l2|3.4.5|i.3.5|o|5.6||o.i|] = 1*i_* prop(-1,0,q1)*d_(nu1,nu2)*i_* prop(-1,2,q2)*i_* prop(-1,0,q3)*d_(nu5,nu6)*i_* prop(-1,0,q4)*d_(nu7,nu8)*i_* prop(-1,2,q5)*i_* prop(-1,2,q6)*i_* prop(-1,2,q7)*i_*e*qch1*(p3(nu1)-p4(nu1))*i_*e*qch2*(q2(nu5)-p2(nu5))*i_*e*qch2*(p1(nu7)-q2(nu7))*i_*e*qch2*(q5(nu2)-q6(nu2))*i_*e*qch2*(q7(nu6)-q5(nu6))*i_*e*qch2*(q6(nu8)-q7(nu8));
#procedure momentumRouting
Id q2 = p2 + p4 + -p3 + -q4;
Id p1 = p2 + p4 + -p3;
Id q1 = p3 + -p4;
Id q3 = p4 + -p3 + -q4;
Id q6 = q7 + -q4;
Id q5 = p4 + q7 + -p3 + -q4;

#endprocedure
*--#]d208l2:

*--#[d209l2:
L [d209l2|i.5.6|4.5.6|o.i.4|6|o||] = 1*i_* prop(-1,0,q1)*d_(nu1,nu2)*i_* prop(-1,0,q2)*d_(nu3,nu4)*i_* prop(-1,2,q3)*i_* prop(-1,2,q4)*i_* prop(-1,2,q5)*i_* prop(-1,2,q6)*i_* prop(-1,0,q7)*d_(nu1 3,nu1 4)*i_*e*qch1*(p3(nu1)-p4(nu1))*i_*e*qch2*(q3(nu3)-p2(nu3))*i_*e*qch2*(p1(nu4)-q4(nu4))*i_*e*qch2*(q6(nu2)-q5(nu2))*i_*e*qch2*(q5(nu1 3)-q3(nu1 3))*i_*e*qch2*(q4(nu1 4)-q6(nu1 4));
#procedure momentumRouting
Id p1 = p2 + p4 + -p3;
Id q4 = p2 + p4 + q2 + -p3;
Id q1 = p3 + -p4;
Id q3 = p2 + q2;
Id q6 = p2 + p4 + q2 + q7 + -p3;
Id q5 = p2 + q2 + q7;

#endprocedure
*--#]d209l2:

*--#[d210l2:
L [d210l2|o.i.2|3.5|5.6|o.5.6||i|] = 1*i_* prop(-1,0,q1)*d_(nu1,nu2)*i_* prop(-1,1,q2)*i_* prop(-1,0,q3)*d_(nu5,nu6)*i_* prop(-1,0,q4)*d_(nu7,nu8)*i_* prop(-1,1,q5)*i_* prop(-1,1,q6)*i_* prop(-1,1,q7)*i_*e*qch2*(p1(nu1)-p2(nu1))*i_*e*qch1*(q2(nu5)-p4(nu5))*i_*e*qch1*(p3(nu7)-q2(nu7))*i_*e*qch1*(q6(nu2)-q5(nu2))*i_*e*qch1*(q5(nu6)-q7(nu6))*i_*e*qch1*(q7(nu8)-q6(nu8));
#procedure momentumRouting
Id q2 = p3 + -q4;
Id p1 = p2 + p4 + -p3;
Id q1 = p4 + -p3;
Id q3 = p3 + -p4 + -q4;
Id q6 = q4 + q7;
Id q5 = p4 + q4 + q7 + -p3;

#endprocedure
*--#]d210l2:

*--#[d211l2:
L [d211l2|3.4.5|i.3.5|o|5.6||o.i|] = 1*i_* prop(-1,0,q1)*d_(nu1,nu2)*i_* prop(-1,1,q2)*i_* prop(-1,0,q3)*d_(nu5,nu6)*i_* prop(-1,0,q4)*d_(nu7,nu8)*i_* prop(-1,1,q5)*i_* prop(-1,1,q6)*i_* prop(-1,1,q7)*i_*e*qch2*(p1(nu1)-p2(nu1))*i_*e*qch1*(q2(nu5)-p4(nu5))*i_*e*qch1*(p3(nu7)-q2(nu7))*i_*e*qch1*(q5(nu2)-q6(nu2))*i_*e*qch1*(q7(nu6)-q5(nu6))*i_*e*qch1*(q6(nu8)-q7(nu8));
#procedure momentumRouting
Id q2 = p3 + -q4;
Id p1 = p2 + p4 + -p3;
Id q1 = p4 + -p3;
Id q3 = p3 + -p4 + -q4;
Id q6 = q7 + -q4;
Id q5 = p3 + q7 + -p4 + -q4;

#endprocedure
*--#]d211l2:

*--#[d212l2:
L [d212l2|2.4.5|5.6|o.i.5|o.6||i|] = 1*i_* prop(-1,0,q1)*d_(nu1,nu2)*i_* prop(-1,1,q2)*i_* prop(-1,0,q3)*d_(nu5,nu6)*i_* prop(-1,0,q4)*d_(nu7,nu8)*i_* prop(-1,2,q5)*i_* prop(-1,2,q6)*i_* prop(-1,2,q7)*i_*e*qch2*(p1(nu1)-p2(nu1))*i_*e*qch1*(q2(nu5)-p4(nu5))*i_*e*qch1*(p3(nu7)-q2(nu7))*i_*e*qch2*(q6(nu2)-q5(nu2))*i_*e*qch2*(q5(nu6)-q7(nu6))*i_*e*qch2*(q7(nu8)-q6(nu8));
#procedure momentumRouting
Id q2 = p3 + -q4;
Id p1 = p2 + p4 + -p3;
Id q1 = p4 + -p3;
Id q3 = p3 + -p4 + -q4;
Id q6 = q4 + q7;
Id q5 = p4 + q4 + q7 + -p3;

#endprocedure
*--#]d212l2:

*--#[d213l2:
L [d213l2|i.2.3|4.5|o.5|5.6||o.i|] = 1*i_* prop(-1,0,q1)*d_(nu1,nu2)*i_* prop(-1,1,q2)*i_* prop(-1,0,q3)*d_(nu5,nu6)*i_* prop(-1,0,q4)*d_(nu7,nu8)*i_* prop(-1,2,q5)*i_* prop(-1,2,q6)*i_* prop(-1,2,q7)*i_*e*qch2*(p1(nu1)-p2(nu1))*i_*e*qch1*(q2(nu5)-p4(nu5))*i_*e*qch1*(p3(nu7)-q2(nu7))*i_*e*qch2*(q5(nu2)-q6(nu2))*i_*e*qch2*(q7(nu6)-q5(nu6))*i_*e*qch2*(q6(nu8)-q7(nu8));
#procedure momentumRouting
Id q2 = p3 + -q4;
Id p1 = p2 + p4 + -p3;
Id q1 = p4 + -p3;
Id q3 = p3 + -p4 + -q4;
Id q6 = q7 + -q4;
Id q5 = p3 + q7 + -p4 + -q4;

#endprocedure
*--#]d213l2:

*--#[d214l2:
L [d214l2|i.5.6|4.5.6|o.i.4|6|o||] = 1*i_* prop(-1,0,q1)*d_(nu1,nu2)*i_* prop(-1,0,q2)*d_(nu3,nu4)*i_* prop(-1,1,q3)*i_* prop(-1,1,q4)*i_* prop(-1,1,q5)*i_* prop(-1,1,q6)*i_* prop(-1,0,q7)*d_(nu1 3,nu1 4)*i_*e*qch2*(p1(nu1)-p2(nu1))*i_*e*qch1*(q3(nu3)-p4(nu3))*i_*e*qch1*(p3(nu4)-q4(nu4))*i_*e*qch1*(q6(nu2)-q5(nu2))*i_*e*qch1*(q5(nu1 3)-q3(nu1 3))*i_*e*qch1*(q4(nu1 4)-q6(nu1 4));
#procedure momentumRouting
Id p1 = p2 + p4 + -p3;
Id q4 = p3 + q2;
Id q1 = p4 + -p3;
Id q3 = p4 + q2;
Id q6 = p3 + q2 + q7;
Id q5 = p4 + q2 + q7;

#endprocedure
*--#]d214l2:

*--#[d215l2:
L [d215l2|3.3.6|o.4.6|5|i.6|o.i||] = 1*i_* prop(-1,0,q1)*d_(nu1,nu2)*i_* prop(-1,0,q2)*d_(nu3,nu4)*i_* prop(-1,2,q3)*i_* prop(-1,2,q4)*i_* prop(-1,1,q5)*i_* prop(-1,1,q6)*i_* prop(-1,0,q7)*d_(nu1 3,nu1 4)*i_*e*qch1*(p3(nu1)-p4(nu1))*i_*e*qch2*(q3(nu3)-p2(nu3))*i_*e*qch2*(p1(nu4)-q4(nu4))*i_*e*qch1*(q6(nu2)-q5(nu2))*i_*e*qch2*(q4(nu1 3)-q3(nu1 3))*i_*e*qch1*(q5(nu1 4)-q6(nu1 4));
#procedure momentumRouting
Id q7 = p4 + -p3;
Id q4 = p2 + p4 + q2 + -p3;
Id p1 = p2 + p4 + -p3;
Id q1 = p3 + -p4;
Id q3 = p2 + q2;
Id q5 = p3 + q6 + -p4;

#endprocedure
*--#]d215l2:

*--#[d216l2:
L [d216l2|o.4.5|o.i.6|4.6.6|5|i||] = 1*i_* prop(-1,0,q1)*d_(nu1,nu2)*i_* prop(-1,0,q2)*d_(nu3,nu4)*i_* prop(-1,2,q3)*i_* prop(-1,2,q4)*i_* prop(-1,2,q5)*i_* prop(-1,2,q6)*i_* prop(-1,0,q7)*d_(nu1 3,nu1 4)*i_*e*qch1*(p3(nu1)-p4(nu1))*i_*e*qch2*(q3(nu3)-p2(nu3))*i_*e*qch2*(p1(nu4)-q4(nu4))*i_*e*qch2*(q6(nu2)-q5(nu2))*i_*e*qch2*(q4(nu1 3)-q3(nu1 3))*i_*e*qch2*(q5(nu1 4)-q6(nu1 4));
#procedure momentumRouting
Id q7 = p4 + -p3;
Id q4 = p2 + p4 + q2 + -p3;
Id p1 = p2 + p4 + -p3;
Id q1 = p3 + -p4;
Id q3 = p2 + q2;
Id q5 = p3 + q6 + -p4;

#endprocedure
*--#]d216l2:

*--#[d217l2:
L [d217l2|o.4.5|o.i.6|4.6.6|5|i||] = 1*i_* prop(-1,0,q1)*d_(nu1,nu2)*i_* prop(-1,0,q2)*d_(nu3,nu4)*i_* prop(-1,1,q3)*i_* prop(-1,1,q4)*i_* prop(-1,1,q5)*i_* prop(-1,1,q6)*i_* prop(-1,0,q7)*d_(nu1 3,nu1 4)*i_*e*qch2*(p1(nu1)-p2(nu1))*i_*e*qch1*(q3(nu3)-p4(nu3))*i_*e*qch1*(p3(nu4)-q4(nu4))*i_*e*qch1*(q6(nu2)-q5(nu2))*i_*e*qch1*(q4(nu1 3)-q3(nu1 3))*i_*e*qch1*(q5(nu1 4)-q6(nu1 4));
#procedure momentumRouting
Id q7 = p3 + -p4;
Id q4 = p3 + q2;
Id p1 = p2 + p4 + -p3;
Id q1 = p4 + -p3;
Id q3 = p4 + q2;
Id q5 = p4 + q6 + -p3;

#endprocedure
*--#]d217l2:

*--#[d218l2:
L [d218l2|3.3.6|o.4.6|5|i.6|o.i||] = 1*i_* prop(-1,0,q1)*d_(nu1,nu2)*i_* prop(-1,0,q2)*d_(nu3,nu4)*i_* prop(-1,1,q3)*i_* prop(-1,1,q4)*i_* prop(-1,2,q5)*i_* prop(-1,2,q6)*i_* prop(-1,0,q7)*d_(nu1 3,nu1 4)*i_*e*qch2*(p1(nu1)-p2(nu1))*i_*e*qch1*(q3(nu3)-p4(nu3))*i_*e*qch1*(p3(nu4)-q4(nu4))*i_*e*qch2*(q6(nu2)-q5(nu2))*i_*e*qch1*(q4(nu1 3)-q3(nu1 3))*i_*e*qch2*(q5(nu1 4)-q6(nu1 4));
#procedure momentumRouting
Id q7 = p3 + -p4;
Id q4 = p3 + q2;
Id p1 = p2 + p4 + -p3;
Id q1 = p4 + -p3;
Id q3 = p4 + q2;
Id q5 = p4 + q6 + -p3;

#endprocedure
*--#]d218l2:

*--#[d219l2:
L [d219l2|2.2.4|5|o.i.4|6|o.6|i|] = 1*i_* prop(-1,0,q1)*d_(nu1,nu2)*i_* prop(-1,0,q2)*d_(nu3,nu4)*i_* prop(-1,2,q3)*i_* prop(-1,2,q4)*i_* prop(-1,2,q5)*i_* prop(-1,2,q6)*i_* prop(-1,0,q7)*d_(nu1 3,nu1 4)*i_*e*qch1*(p3(nu1)-p4(nu1))*i_*e*qch2*(q3(nu3)-p2(nu3))*i_*e*qch2*(p1(nu4)-q4(nu4))*i_*e*qch2*(q5(nu2)-q3(nu2))*i_*e*qch2*(q4(nu1 3)-q6(nu1 3))*i_*e*qch2*(q6(nu1 4)-q5(nu1 4));
#procedure momentumRouting
Id p1 = p2 + p4 + -p3;
Id q4 = p2 + p4 + q2 + -p3;
Id q1 = p3 + -p4;
Id q3 = p2 + q2;
Id q6 = p2 + p4 + q2 + -p3 + -q7;
Id q5 = p2 + p4 + q2 + -p3;

#endprocedure
*--#]d219l2:

*--#[d220l2:
L [d220l2|3.4.4|i.3.5|o|5|6|o.i|] = 1*i_* prop(-1,0,q1)*d_(nu1,nu2)*i_* prop(-1,0,q2)*d_(nu3,nu4)*i_* prop(-1,2,q3)*i_* prop(-1,2,q4)*i_* prop(-1,2,q5)*i_* prop(-1,2,q6)*i_* prop(-1,0,q7)*d_(nu1 3,nu1 4)*i_*e*qch1*(p3(nu1)-p4(nu1))*i_*e*qch2*(p1(nu3)-q3(nu3))*i_*e*qch2*(q4(nu4)-p2(nu4))*i_*e*qch2*(q3(nu2)-q5(nu2))*i_*e*qch2*(q6(nu1 3)-q4(nu1 3))*i_*e*qch2*(q5(nu1 4)-q6(nu1 4));
#procedure momentumRouting
Id p1 = p2 + p4 + -p3;
Id q4 = p2 + -q2;
Id q1 = p3 + -p4;
Id q3 = p2 + p4 + -p3 + -q2;
Id q6 = p2 + q7 + -q2;
Id q5 = p2 + -q2;

#endprocedure
*--#]d220l2:

*--#[d221l2:
L [d221l2|2.2.4|5|o.i.4|6|o.6|i|] = 1*i_* prop(-1,0,q1)*d_(nu1,nu2)*i_* prop(-1,0,q2)*d_(nu3,nu4)*i_* prop(-1,1,q3)*i_* prop(-1,1,q4)*i_* prop(-1,1,q5)*i_* prop(-1,1,q6)*i_* prop(-1,0,q7)*d_(nu1 3,nu1 4)*i_*e*qch2*(p1(nu1)-p2(nu1))*i_*e*qch1*(q3(nu3)-p4(nu3))*i_*e*qch1*(p3(nu4)-q4(nu4))*i_*e*qch1*(q5(nu2)-q3(nu2))*i_*e*qch1*(q4(nu1 3)-q6(nu1 3))*i_*e*qch1*(q6(nu1 4)-q5(nu1 4));
#procedure momentumRouting
Id p1 = p2 + p4 + -p3;
Id q4 = p3 + q2;
Id q1 = p4 + -p3;
Id q3 = p4 + q2;
Id q6 = p3 + q2 + -q7;
Id q5 = p3 + q2;

#endprocedure
*--#]d221l2:

*--#[d222l2:
L [d222l2|3.4.4|i.3.5|o|5|6|o.i|] = 1*i_* prop(-1,0,q1)*d_(nu1,nu2)*i_* prop(-1,0,q2)*d_(nu3,nu4)*i_* prop(-1,1,q3)*i_* prop(-1,1,q4)*i_* prop(-1,1,q5)*i_* prop(-1,1,q6)*i_* prop(-1,0,q7)*d_(nu1 3,nu1 4)*i_*e*qch2*(p1(nu1)-p2(nu1))*i_*e*qch1*(p3(nu3)-q3(nu3))*i_*e*qch1*(q4(nu4)-p4(nu4))*i_*e*qch1*(q3(nu2)-q5(nu2))*i_*e*qch1*(q6(nu1 3)-q4(nu1 3))*i_*e*qch1*(q5(nu1 4)-q6(nu1 4));
#procedure momentumRouting
Id p1 = p2 + p4 + -p3;
Id q4 = p4 + -q2;
Id q1 = p4 + -p3;
Id q3 = p3 + -q2;
Id q6 = p4 + q7 + -q2;
Id q5 = p4 + -q2;

#endprocedure
*--#]d222l2:

*--#[d223l2:
L [d223l2|2.4.5|o.6|i.5.6|o.6|i||] = 1*i_* prop(-1,0,q1)*d_(nu1,nu2)*i_* prop(-1,1,q2)*i_* prop(-1,2,q3)*i_* prop(-1,1,q4)*i_* prop(-1,0,q5)*d_(nu9,nu1 0)*i_* prop(-1,0,q6)*d_(nu1 1,nu1 2)*i_* prop(-1,2,q7)*i_*e*qch1*(q2(nu1)-p4(nu1))*i_*e*qch2*(q3(nu2)-p2(nu2))*i_*e*qch1*(p3(nu9)-q4(nu9))*i_*e*qch2*(p1(nu1 1)-q7(nu1 1))*i_*e*qch1*(q4(nu1 2)-q2(nu1 2))*i_*e*qch2*(q7(nu1 0)-q3(nu1 0));
#procedure momentumRouting
Id q2 = p3 + q6 + -q5;
Id q4 = p3 + -q5;
Id q7 = p2 + p4 + -p3 + -q6;
Id p1 = p2 + p4 + -p3;
Id q1 = p3 + q6 + -p4 + -q5;
Id q3 = p2 + p4 + q5 + -p3 + -q6;

#endprocedure
*--#]d223l2:

*--#[d224l2:
L [d224l2|o.2.5|3.4|i.6|o.6|i.6||] = 1*i_* prop(-1,0,q1)*d_(nu1,nu2)*i_* prop(-1,1,q2)*i_* prop(-1,2,q3)*i_* prop(-1,0,q4)*d_(nu7,nu8)*i_* prop(-1,2,q5)*i_* prop(-1,1,q6)*i_* prop(-1,0,q7)*d_(nu1 3,nu1 4)*i_*e*qch1*(q2(nu1)-p4(nu1))*i_*e*qch2*(p1(nu2)-q3(nu2))*i_*e*qch2*(q5(nu7)-p2(nu7))*i_*e*qch1*(p3(nu1 3)-q6(nu1 3))*i_*e*qch1*(q6(nu8)-q2(nu8))*i_*e*qch2*(q3(nu1 4)-q5(nu1 4));
#procedure momentumRouting
Id q2 = p3 + q4 + -q7;
Id p1 = p2 + p4 + -p3;
Id q1 = p3 + q4 + -p4 + -q7;
Id q3 = p2 + q4 + -q7;
Id q6 = p3 + -q7;
Id q5 = p2 + q4;

#endprocedure
*--#]d224l2:

*--#[d225l2:
L [d225l2|o.2.5|3.4|i.6|o.6|i.6||] = 1*i_* prop(-1,0,q1)*d_(nu1,nu2)*i_* prop(-1,2,q2)*i_* prop(-1,1,q3)*i_* prop(-1,0,q4)*d_(nu7,nu8)*i_* prop(-1,1,q5)*i_* prop(-1,2,q6)*i_* prop(-1,0,q7)*d_(nu1 3,nu1 4)*i_*e*qch2*(q2(nu1)-p2(nu1))*i_*e*qch1*(p3(nu2)-q3(nu2))*i_*e*qch1*(q5(nu7)-p4(nu7))*i_*e*qch2*(p1(nu1 3)-q6(nu1 3))*i_*e*qch2*(q6(nu8)-q2(nu8))*i_*e*qch1*(q3(nu1 4)-q5(nu1 4));
#procedure momentumRouting
Id q2 = p2 + p4 + q4 + -p3 + -q7;
Id p1 = p2 + p4 + -p3;
Id q1 = p4 + q4 + -p3 + -q7;
Id q3 = p4 + q4 + -q7;
Id q6 = p2 + p4 + -p3 + -q7;
Id q5 = p4 + q4;

#endprocedure
*--#]d225l2:

*--#[d226l2:
L [d226l2|3.4.6|i.4.5|o.5|i|6|o|] = 1*i_* prop(-1,0,q1)*d_(nu1,nu2)*i_* prop(-1,1,q2)*i_* prop(-1,2,q3)*i_* prop(-1,1,q4)*i_* prop(-1,0,q5)*d_(nu9,nu1 0)*i_* prop(-1,0,q6)*d_(nu1 1,nu1 2)*i_* prop(-1,2,q7)*i_*e*qch1*(p3(nu1)-q2(nu1))*i_*e*qch2*(p1(nu2)-q3(nu2))*i_*e*qch1*(q4(nu9)-p4(nu9))*i_*e*qch2*(q7(nu1 1)-p2(nu1 1))*i_*e*qch1*(q2(nu1 2)-q4(nu1 2))*i_*e*qch2*(q3(nu1 0)-q7(nu1 0));
#procedure momentumRouting
Id q2 = p4 + q5 + -q6;
Id q4 = p4 + q5;
Id q7 = p2 + q6;
Id p1 = p2 + p4 + -p3;
Id q1 = p3 + q6 + -p4 + -q5;
Id q3 = p2 + q6 + -q5;

#endprocedure
*--#]d226l2:

*--#[d227l2:
L [d227l2|2.3.6|i.5|4.5|o.6|i|o|] = 1*i_* prop(-1,0,q1)*d_(nu1,nu2)*i_* prop(-1,1,q2)*i_* prop(-1,2,q3)*i_* prop(-1,0,q4)*d_(nu7,nu8)*i_* prop(-1,1,q5)*i_* prop(-1,2,q6)*i_* prop(-1,0,q7)*d_(nu1 3,nu1 4)*i_*e*qch1*(q2(nu1)-p4(nu1))*i_*e*qch2*(q3(nu2)-p2(nu2))*i_*e*qch1*(p3(nu7)-q5(nu7))*i_*e*qch2*(p1(nu8)-q6(nu8))*i_*e*qch1*(q5(nu1 3)-q2(nu1 3))*i_*e*qch2*(q6(nu1 4)-q3(nu1 4));
#procedure momentumRouting
Id q2 = p3 + -q4 + -q7;
Id p1 = p2 + p4 + -p3;
Id q1 = p3 + -p4 + -q4 + -q7;
Id q3 = p2 + p4 + q4 + q7 + -p3;
Id q6 = p2 + p4 + q4 + -p3;
Id q5 = p3 + -q4;

#endprocedure
*--#]d227l2:

*--#[d228l2:
L [d228l2|3.5.6|o.3.6|i|o.5.6|i||] = 1*i_* prop(-1,1,q1)*i_* prop(-1,0,q2)*d_(nu3,nu4)*i_* prop(-1,0,q3)*d_(nu5,nu6)*i_* prop(-1,0,q4)*d_(nu7,nu8)*i_* prop(-1,2,q5)*i_* prop(-1,2,q6)*i_* prop(-1,2,q7)*i_*e*qch1*(q1(nu3)-p4(nu3))*i_*e*qch1*(p3(nu5)-q1(nu5))*i_*e*qch2*(q5(nu7)-p2(nu7))*i_*e*qch2*(p1(nu8)-q6(nu8))*i_*e*qch2*(q7(nu4)-q5(nu4))*i_*e*qch2*(q6(nu6)-q7(nu6));
#procedure momentumRouting
Id q2 = p3 + -p4 + -q3;
Id q7 = p2 + p4 + q3 + q4 + -p3;
Id p1 = p2 + p4 + -p3;
Id q1 = p3 + -q3;
Id q6 = p2 + p4 + q4 + -p3;
Id q5 = p2 + q4;

#endprocedure
*--#]d228l2:

*--#[d229l2:
L [d229l2|3.5.6|o.3.6|i|o.5.6|i||] = 1*i_* prop(-1,0,q1)*d_(nu1,nu2)*i_* prop(-1,1,q2)*i_* prop(-1,1,q3)*i_* prop(-1,2,q4)*i_* prop(-1,0,q5)*d_(nu9,nu1 0)*i_* prop(-1,0,q6)*d_(nu1 1,nu1 2)*i_* prop(-1,1,q7)*i_*e*qch1*(q2(nu1)-p4(nu1))*i_*e*qch1*(p3(nu2)-q3(nu2))*i_*e*qch2*(q4(nu9)-p2(nu9))*i_*e*qch2*(p1(nu1 1)-q4(nu1 1))*i_*e*qch1*(q7(nu1 0)-q2(nu1 0))*i_*e*qch1*(q3(nu1 2)-q7(nu1 2));
#procedure momentumRouting
Id q2 = p4 + q1;
Id q4 = p2 + p4 + -p3 + -q6;
Id q7 = p3 + q1 + q6;
Id p1 = p2 + p4 + -p3;
Id q3 = p3 + q1;
Id q5 = p4 + -p3 + -q6;

#endprocedure
*--#]d229l2:

*--#[d230l2:
L [d230l2|2.5.6|i.4|i.5.6|o.6|o||] = 1*i_* prop(-1,1,q1)*i_* prop(-1,0,q2)*d_(nu3,nu4)*i_* prop(-1,0,q3)*d_(nu5,nu6)*i_* prop(-1,0,q4)*d_(nu7,nu8)*i_* prop(-1,2,q5)*i_* prop(-1,2,q6)*i_* prop(-1,2,q7)*i_*e*qch1*(q1(nu3)-p4(nu3))*i_*e*qch1*(p3(nu5)-q1(nu5))*i_*e*qch2*(p1(nu7)-q5(nu7))*i_*e*qch2*(q6(nu8)-p2(nu8))*i_*e*qch2*(q5(nu4)-q7(nu4))*i_*e*qch2*(q7(nu6)-q6(nu6));
#procedure momentumRouting
Id q2 = p3 + -p4 + -q3;
Id q7 = p2 + -q3 + -q4;
Id p1 = p2 + p4 + -p3;
Id q1 = p3 + -q3;
Id q6 = p2 + -q4;
Id q5 = p2 + p4 + -p3 + -q4;

#endprocedure
*--#]d230l2:

*--#[d231l2:
L [d231l2|i.3.4|i.5.6|o.6|5.6|o||] = 1*i_* prop(-1,0,q1)*d_(nu1,nu2)*i_* prop(-1,1,q2)*i_* prop(-1,1,q3)*i_* prop(-1,2,q4)*i_* prop(-1,0,q5)*d_(nu9,nu1 0)*i_* prop(-1,0,q6)*d_(nu1 1,nu1 2)*i_* prop(-1,1,q7)*i_*e*qch1*(q2(nu1)-p4(nu1))*i_*e*qch1*(p3(nu2)-q3(nu2))*i_*e*qch2*(p1(nu9)-q4(nu9))*i_*e*qch2*(q4(nu1 1)-p2(nu1 1))*i_*e*qch1*(q7(nu1 0)-q2(nu1 0))*i_*e*qch1*(q3(nu1 2)-q7(nu1 2));
#procedure momentumRouting
Id q2 = p4 + q1;
Id q4 = p2 + q6;
Id q7 = p3 + q1 + q6;
Id p1 = p2 + p4 + -p3;
Id q3 = p3 + q1;
Id q5 = p4 + -p3 + -q6;

#endprocedure
*--#]d231l2:

*--#[d232l2:
L [d232l2|i.3.4|i.5.6|5.6|o.5||o|] = 1*i_* prop(-1,0,q1)*d_(nu1,nu2)*i_* prop(-1,1,q2)*i_* prop(-1,2,q3)*i_* prop(-1,0,q4)*d_(nu7,nu8)*i_* prop(-1,1,q5)*i_* prop(-1,2,q6)*i_* prop(-1,0,q7)*d_(nu1 3,nu1 4)*i_*e*qch1*(q2(nu1)-p4(nu1))*i_*e*qch2*(p1(nu2)-q3(nu2))*i_*e*qch1*(p3(nu7)-q5(nu7))*i_*e*qch2*(q6(nu8)-p2(nu8))*i_*e*qch1*(q5(nu1 3)-q2(nu1 3))*i_*e*qch2*(q3(nu1 4)-q6(nu1 4));
#procedure momentumRouting
Id q2 = p3 + -q4 + -q7;
Id p1 = p2 + p4 + -p3;
Id q1 = p3 + -p4 + -q4 + -q7;
Id q3 = p2 + -q4 + -q7;
Id q6 = p2 + -q4;
Id q5 = p3 + -q4;

#endprocedure
*--#]d232l2:

*--#[d233l2:
L [d233l2|o.2.4|i.4|o.5.6|6|i.6||] = 1*i_* prop(-1,0,q1)*d_(nu1,nu2)*i_* prop(-1,1,q2)*i_* prop(-1,1,q3)*i_* prop(-1,0,q4)*d_(nu7,nu8)*i_* prop(-1,2,q5)*i_* prop(-1,2,q6)*i_* prop(-1,0,q7)*d_(nu1 3,nu1 4)*i_*e*qch1*(q2(nu1)-p4(nu1))*i_*e*qch1*(p3(nu2)-q3(nu2))*i_*e*qch2*(q5(nu7)-p2(nu7))*i_*e*qch2*(p1(nu8)-q6(nu8))*i_*e*qch1*(q3(nu1 3)-q2(nu1 3))*i_*e*qch2*(q6(nu1 4)-q5(nu1 4));
#procedure momentumRouting
Id q2 = p4 + q1;
Id q7 = p3 + -p4;
Id p1 = p2 + p4 + -p3;
Id q3 = p3 + q1;
Id q6 = p2 + p4 + q4 + -p3;
Id q5 = p2 + q4;

#endprocedure
*--#]d233l2:

*--#[d234l2:
L [d234l2|o.2.5|i.6|4.5.6|o.5||i|] = 1*i_* prop(-1,0,q1)*d_(nu1,nu2)*i_* prop(-1,1,q2)*i_* prop(-1,2,q3)*i_* prop(-1,0,q4)*d_(nu7,nu8)*i_* prop(-1,0,q5)*d_(nu9,nu1 0)*i_* prop(-1,2,q6)*i_* prop(-1,2,q7)*i_*e*qch1*(q2(nu1)-p4(nu1))*i_*e*qch2*(q3(nu2)-p2(nu2))*i_*e*qch1*(p3(nu7)-q2(nu7))*i_*e*qch2*(p1(nu9)-q6(nu9))*i_*e*qch2*(q7(nu1 0)-q3(nu1 0))*i_*e*qch2*(q6(nu8)-q7(nu8));
#procedure momentumRouting
Id q2 = p3 + -q4;
Id q7 = p2 + p4 + q4 + -p3 + -q5;
Id p1 = p2 + p4 + -p3;
Id q1 = p3 + -p4 + -q4;
Id q3 = p2 + p4 + q4 + -p3;
Id q6 = p2 + p4 + -p3 + -q5;

#endprocedure
*--#]d234l2:

*--#[d235l2:
L [d235l2|2.3.4|i.4|o.6|5|o.6|i|] = 1*i_* prop(-1,1,q1)*i_* prop(-1,0,q2)*d_(nu3,nu4)*i_* prop(-1,0,q3)*d_(nu5,nu6)*i_* prop(-1,2,q4)*i_* prop(-1,2,q5)*i_* prop(-1,0,q6)*d_(nu1 1,nu1 2)*i_* prop(-1,2,q7)*i_*e*qch1*(q1(nu3)-p4(nu3))*i_*e*qch1*(p3(nu5)-q1(nu5))*i_*e*qch2*(p1(nu4)-q4(nu4))*i_*e*qch2*(q5(nu1 1)-p2(nu1 1))*i_*e*qch2*(q7(nu6)-q5(nu6))*i_*e*qch2*(q4(nu1 2)-q7(nu1 2));
#procedure momentumRouting
Id q2 = p3 + -p4 + -q3;
Id q4 = p2 + -q3;
Id q7 = p2 + q6 + -q3;
Id p1 = p2 + p4 + -p3;
Id q1 = p3 + -q3;
Id q5 = p2 + q6;

#endprocedure
*--#]d235l2:

*--#[d236l2:
L [d236l2|o.2.5|i.6|4.5.6|o.5||i|] = 1*i_* prop(-1,0,q1)*d_(nu1,nu2)*i_* prop(-1,2,q2)*i_* prop(-1,1,q3)*i_* prop(-1,0,q4)*d_(nu7,nu8)*i_* prop(-1,0,q5)*d_(nu9,nu1 0)*i_* prop(-1,1,q6)*i_* prop(-1,1,q7)*i_*e*qch2*(q2(nu1)-p2(nu1))*i_*e*qch1*(q3(nu2)-p4(nu2))*i_*e*qch2*(p1(nu7)-q2(nu7))*i_*e*qch1*(p3(nu9)-q6(nu9))*i_*e*qch1*(q7(nu1 0)-q3(nu1 0))*i_*e*qch1*(q6(nu8)-q7(nu8));
#procedure momentumRouting
Id q2 = p2 + p4 + -p3 + -q4;
Id q7 = p3 + q4 + -q5;
Id p1 = p2 + p4 + -p3;
Id q1 = p4 + -p3 + -q4;
Id q3 = p3 + q4;
Id q6 = p3 + -q5;

#endprocedure
*--#]d236l2:

*--#[d237l2:
L [d237l2|2.3.4|i.4|o.6|5|o.6|i|] = 1*i_* prop(-1,0,q1)*d_(nu1,nu2)*i_* prop(-1,2,q2)*i_* prop(-1,1,q3)*i_* prop(-1,0,q4)*d_(nu7,nu8)*i_* prop(-1,0,q5)*d_(nu9,nu1 0)*i_* prop(-1,1,q6)*i_* prop(-1,1,q7)*i_*e*qch2*(q2(nu1)-p2(nu1))*i_*e*qch1*(p3(nu2)-q3(nu2))*i_*e*qch2*(p1(nu7)-q2(nu7))*i_*e*qch1*(q6(nu9)-p4(nu9))*i_*e*qch1*(q3(nu1 0)-q7(nu1 0))*i_*e*qch1*(q7(nu8)-q6(nu8));
#procedure momentumRouting
Id q2 = p2 + p4 + -p3 + -q4;
Id q7 = p4 + q5 + -q4;
Id p1 = p2 + p4 + -p3;
Id q1 = p4 + -p3 + -q4;
Id q3 = p4 + -q4;
Id q6 = p4 + q5;

#endprocedure
*--#]d237l2:

*--#[d238l2:
L [d238l2|o.2.5|4.6|o.4.5|6|i|i|] = 1*i_* prop(-1,1,q1)*i_* prop(-1,0,q2)*d_(nu3,nu4)*i_* prop(-1,0,q3)*d_(nu5,nu6)*i_* prop(-1,2,q4)*i_* prop(-1,2,q5)*i_* prop(-1,0,q6)*d_(nu1 1,nu1 2)*i_* prop(-1,2,q7)*i_*e*qch1*(p3(nu3)-q1(nu3))*i_*e*qch1*(q1(nu5)-p4(nu5))*i_*e*qch2*(q4(nu4)-p2(nu4))*i_*e*qch2*(p1(nu1 1)-q5(nu1 1))*i_*e*qch2*(q5(nu6)-q7(nu6))*i_*e*qch2*(q7(nu1 2)-q4(nu1 2));
#procedure momentumRouting
Id q2 = p3 + -p4 + -q3;
Id q4 = p2 + p4 + q3 + -p3;
Id q7 = p2 + p4 + q3 + -p3 + -q6;
Id p1 = p2 + p4 + -p3;
Id q1 = p4 + q3;
Id q5 = p2 + p4 + -p3 + -q6;

#endprocedure
*--#]d238l2:

*--#[d239l2:
L [d239l2|3.4.6|i.3.5|i|5.6|o|o|] = 1*i_* prop(-1,1,q1)*i_* prop(-1,0,q2)*d_(nu3,nu4)*i_* prop(-1,0,q3)*d_(nu5,nu6)*i_* prop(-1,2,q4)*i_* prop(-1,2,q5)*i_* prop(-1,0,q6)*d_(nu1 1,nu1 2)*i_* prop(-1,2,q7)*i_*e*qch1*(p3(nu3)-q1(nu3))*i_*e*qch1*(q1(nu5)-p4(nu5))*i_*e*qch2*(p1(nu4)-q4(nu4))*i_*e*qch2*(q5(nu1 1)-p2(nu1 1))*i_*e*qch2*(q7(nu6)-q5(nu6))*i_*e*qch2*(q4(nu1 2)-q7(nu1 2));
#procedure momentumRouting
Id q2 = p3 + -p4 + -q3;
Id q4 = p2 + -q3;
Id q7 = p2 + q6 + -q3;
Id p1 = p2 + p4 + -p3;
Id q1 = p4 + q3;
Id q5 = p2 + q6;

#endprocedure
*--#]d239l2:

*--#[d240l2:
L [d240l2|o.2.5|4.6|o.4.5|6|i|i|] = 1*i_* prop(-1,0,q1)*d_(nu1,nu2)*i_* prop(-1,2,q2)*i_* prop(-1,1,q3)*i_* prop(-1,0,q4)*d_(nu7,nu8)*i_* prop(-1,0,q5)*d_(nu9,nu1 0)*i_* prop(-1,1,q6)*i_* prop(-1,1,q7)*i_*e*qch2*(p1(nu1)-q2(nu1))*i_*e*qch1*(q3(nu2)-p4(nu2))*i_*e*qch2*(q2(nu7)-p2(nu7))*i_*e*qch1*(p3(nu9)-q6(nu9))*i_*e*qch1*(q7(nu1 0)-q3(nu1 0))*i_*e*qch1*(q6(nu8)-q7(nu8));
#procedure momentumRouting
Id q2 = p2 + q4;
Id q7 = p3 + q4 + -q5;
Id p1 = p2 + p4 + -p3;
Id q1 = p4 + -p3 + -q4;
Id q3 = p3 + q4;
Id q6 = p3 + -q5;

#endprocedure
*--#]d240l2:

*--#[d241l2:
L [d241l2|3.4.6|i.3.5|i|5.6|o|o|] = 1*i_* prop(-1,2,q1)*i_* prop(-1,0,q2)*d_(nu3,nu4)*i_* prop(-1,0,q3)*d_(nu5,nu6)*i_* prop(-1,1,q4)*i_* prop(-1,1,q5)*i_* prop(-1,0,q6)*d_(nu1 1,nu1 2)*i_* prop(-1,1,q7)*i_*e*qch2*(p1(nu3)-q1(nu3))*i_*e*qch2*(q1(nu5)-p2(nu5))*i_*e*qch1*(p3(nu4)-q4(nu4))*i_*e*qch1*(q5(nu1 1)-p4(nu1 1))*i_*e*qch1*(q7(nu6)-q5(nu6))*i_*e*qch1*(q4(nu1 2)-q7(nu1 2));
#procedure momentumRouting
Id q2 = p4 + -p3 + -q3;
Id q4 = p4 + -q3;
Id q7 = p4 + q6 + -q3;
Id p1 = p2 + p4 + -p3;
Id q1 = p2 + q3;
Id q5 = p4 + q6;

#endprocedure
*--#]d241l2:

*--#[d242l2:
L [d242l2|o.3.6|i.5.6|4.4|5|o|i|] = 1*i_* prop(-1,0,q1)*d_(nu1,nu2)*i_* prop(-1,1,q2)*i_* prop(-1,2,q3)*i_* prop(-1,0,q4)*d_(nu7,nu8)*i_* prop(-1,0,q5)*d_(nu9,nu1 0)*i_* prop(-1,1,q6)*i_* prop(-1,1,q7)*i_*e*qch1*(q2(nu1)-p4(nu1))*i_*e*qch2*(q3(nu2)-p2(nu2))*i_*e*qch1*(p3(nu7)-q2(nu7))*i_*e*qch2*(p1(nu9)-q3(nu9))*i_*e*qch1*(q7(nu8)-q6(nu8))*i_*e*qch1*(q6(nu1 0)-q7(nu1 0));
#procedure momentumRouting
Id q2 = p3 + q5;
Id q4 = -q5;
Id p1 = p2 + p4 + -p3;
Id q1 = p3 + q5 + -p4;
Id q3 = p2 + p4 + -p3 + -q5;
Id q6 = q7 + -q5;

#endprocedure
*--#]d242l2:

*--#[d243l2:
L [d243l2|2.2.3|5|i.6|o.5.6|i|o|] = 1*i_* prop(-1,0,q1)*d_(nu1,nu2)*i_* prop(-1,1,q2)*i_* prop(-1,2,q3)*i_* prop(-1,0,q4)*d_(nu7,nu8)*i_* prop(-1,0,q5)*d_(nu9,nu1 0)*i_* prop(-1,2,q6)*i_* prop(-1,2,q7)*i_*e*qch1*(q2(nu1)-p4(nu1))*i_*e*qch2*(q3(nu2)-p2(nu2))*i_*e*qch1*(p3(nu7)-q2(nu7))*i_*e*qch2*(p1(nu9)-q3(nu9))*i_*e*qch2*(q7(nu8)-q6(nu8))*i_*e*qch2*(q6(nu1 0)-q7(nu1 0));
#procedure momentumRouting
Id q2 = p3 + q5;
Id q4 = -q5;
Id p1 = p2 + p4 + -p3;
Id q1 = p3 + q5 + -p4;
Id q3 = p2 + p4 + -p3 + -q5;
Id q6 = q7 + -q5;

#endprocedure
*--#]d243l2:

*--#[d244l2:
L [d244l2|2.3.3|i.4|5|i.6|o.6|o|] = 1*i_* prop(-1,1,q1)*i_* prop(-1,0,q2)*d_(nu3,nu4)*i_* prop(-1,0,q3)*d_(nu5,nu6)*i_* prop(-1,2,q4)*i_* prop(-1,2,q5)*i_* prop(-1,2,q6)*i_* prop(-1,0,q7)*d_(nu1 3,nu1 4)*i_*e*qch1*(q1(nu3)-p4(nu3))*i_*e*qch1*(p3(nu5)-q1(nu5))*i_*e*qch2*(q4(nu4)-p2(nu4))*i_*e*qch2*(p1(nu6)-q5(nu6))*i_*e*qch2*(q6(nu1 3)-q4(nu1 3))*i_*e*qch2*(q5(nu1 4)-q6(nu1 4));
#procedure momentumRouting
Id q2 = p3 + -p4 + -q3;
Id q4 = p2 + p4 + q3 + -p3;
Id p1 = p2 + p4 + -p3;
Id q1 = p3 + -q3;
Id q6 = p2 + p4 + q3 + q7 + -p3;
Id q5 = p2 + p4 + q3 + -p3;

#endprocedure
*--#]d244l2:

*--#[d245l2:
L [d245l2|4.4.6|o.3.5|i.4||i.6|o|] = 1*i_* prop(-1,1,q1)*i_* prop(-1,0,q2)*d_(nu3,nu4)*i_* prop(-1,0,q3)*d_(nu5,nu6)*i_* prop(-1,2,q4)*i_* prop(-1,2,q5)*i_* prop(-1,2,q6)*i_* prop(-1,0,q7)*d_(nu1 3,nu1 4)*i_*e*qch1*(q1(nu3)-p4(nu3))*i_*e*qch1*(p3(nu5)-q1(nu5))*i_*e*qch2*(p1(nu4)-q4(nu4))*i_*e*qch2*(q5(nu6)-p2(nu6))*i_*e*qch2*(q4(nu1 3)-q6(nu1 3))*i_*e*qch2*(q6(nu1 4)-q5(nu1 4));
#procedure momentumRouting
Id q2 = p3 + -p4 + -q3;
Id q4 = p2 + -q3;
Id p1 = p2 + p4 + -p3;
Id q1 = p3 + -q3;
Id q6 = p2 + -q3 + -q7;
Id q5 = p2 + -q3;

#endprocedure
*--#]d245l2:

*--#[d246l2:
L [d246l2|3.5.5|o.4.6|o.4|i|6|i|] = 1*i_* prop(-1,0,q1)*d_(nu1,nu2)*i_* prop(-1,1,q2)*i_* prop(-1,2,q3)*i_* prop(-1,0,q4)*d_(nu7,nu8)*i_* prop(-1,0,q5)*d_(nu9,nu1 0)*i_* prop(-1,1,q6)*i_* prop(-1,1,q7)*i_*e*qch1*(q2(nu1)-p4(nu1))*i_*e*qch2*(p1(nu2)-q3(nu2))*i_*e*qch1*(p3(nu7)-q2(nu7))*i_*e*qch2*(q3(nu9)-p2(nu9))*i_*e*qch1*(q7(nu8)-q6(nu8))*i_*e*qch1*(q6(nu1 0)-q7(nu1 0));
#procedure momentumRouting
Id q2 = p3 + q5;
Id q4 = -q5;
Id p1 = p2 + p4 + -p3;
Id q1 = p3 + q5 + -p4;
Id q3 = p2 + q5;
Id q6 = q7 + -q5;

#endprocedure
*--#]d246l2:

*--#[d247l2:
L [d247l2|i.2.5|o.3|i.4|o.6|6.6||] = 1*i_* prop(-1,0,q1)*d_(nu1,nu2)*i_* prop(-1,1,q2)*i_* prop(-1,2,q3)*i_* prop(-1,0,q4)*d_(nu7,nu8)*i_* prop(-1,0,q5)*d_(nu9,nu1 0)*i_* prop(-1,2,q6)*i_* prop(-1,2,q7)*i_*e*qch1*(q2(nu1)-p4(nu1))*i_*e*qch2*(p1(nu2)-q3(nu2))*i_*e*qch1*(p3(nu7)-q2(nu7))*i_*e*qch2*(q3(nu9)-p2(nu9))*i_*e*qch2*(q7(nu8)-q6(nu8))*i_*e*qch2*(q6(nu1 0)-q7(nu1 0));
#procedure momentumRouting
Id q2 = p3 + q5;
Id q4 = -q5;
Id p1 = p2 + p4 + -p3;
Id q1 = p3 + q5 + -p4;
Id q3 = p2 + q5;
Id q6 = q7 + -q5;

#endprocedure
*--#]d247l2:

*--#[d248l2:
L [d248l2|i.2.5|o.3|i.4|o.6|6.6||] = 1*i_* prop(-1,0,q1)*d_(nu1,nu2)*i_* prop(-1,2,q2)*i_* prop(-1,1,q3)*i_* prop(-1,0,q4)*d_(nu7,nu8)*i_* prop(-1,0,q5)*d_(nu9,nu1 0)*i_* prop(-1,1,q6)*i_* prop(-1,1,q7)*i_*e*qch2*(q2(nu1)-p2(nu1))*i_*e*qch1*(p3(nu2)-q3(nu2))*i_*e*qch2*(p1(nu7)-q2(nu7))*i_*e*qch1*(q3(nu9)-p4(nu9))*i_*e*qch1*(q7(nu8)-q6(nu8))*i_*e*qch1*(q6(nu1 0)-q7(nu1 0));
#procedure momentumRouting
Id q2 = p2 + p4 + q5 + -p3;
Id q4 = -q5;
Id p1 = p2 + p4 + -p3;
Id q1 = p4 + q5 + -p3;
Id q3 = p4 + q5;
Id q6 = q7 + -q5;

#endprocedure
*--#]d248l2:

*--#[d249l2:
L [d249l2|3.5.5|o.4.6|o.4|i|6|i|] = 1*i_* prop(-1,0,q1)*d_(nu1,nu2)*i_* prop(-1,2,q2)*i_* prop(-1,1,q3)*i_* prop(-1,0,q4)*d_(nu7,nu8)*i_* prop(-1,0,q5)*d_(nu9,nu1 0)*i_* prop(-1,2,q6)*i_* prop(-1,2,q7)*i_*e*qch2*(q2(nu1)-p2(nu1))*i_*e*qch1*(p3(nu2)-q3(nu2))*i_*e*qch2*(p1(nu7)-q2(nu7))*i_*e*qch1*(q3(nu9)-p4(nu9))*i_*e*qch2*(q7(nu8)-q6(nu8))*i_*e*qch2*(q6(nu1 0)-q7(nu1 0));
#procedure momentumRouting
Id q2 = p2 + p4 + q5 + -p3;
Id q4 = -q5;
Id p1 = p2 + p4 + -p3;
Id q1 = p4 + q5 + -p3;
Id q3 = p4 + q5;
Id q6 = q7 + -q5;

#endprocedure
*--#]d249l2:

*--#[d250l2:
L [d250l2|2.3.3|i.4|5|i.6|o.6|o|] = 1*i_* prop(-1,2,q1)*i_* prop(-1,0,q2)*d_(nu3,nu4)*i_* prop(-1,0,q3)*d_(nu5,nu6)*i_* prop(-1,1,q4)*i_* prop(-1,1,q5)*i_* prop(-1,1,q6)*i_* prop(-1,0,q7)*d_(nu1 3,nu1 4)*i_*e*qch2*(q1(nu3)-p2(nu3))*i_*e*qch2*(p1(nu5)-q1(nu5))*i_*e*qch1*(q4(nu4)-p4(nu4))*i_*e*qch1*(p3(nu6)-q5(nu6))*i_*e*qch1*(q6(nu1 3)-q4(nu1 3))*i_*e*qch1*(q5(nu1 4)-q6(nu1 4));
#procedure momentumRouting
Id q2 = p4 + -p3 + -q3;
Id q4 = p3 + q3;
Id p1 = p2 + p4 + -p3;
Id q1 = p2 + p4 + -p3 + -q3;
Id q6 = p3 + q3 + q7;
Id q5 = p3 + q3;

#endprocedure
*--#]d250l2:

*--#[d251l2:
L [d251l2|4.4.6|o.3.5|i.4||i.6|o|] = 1*i_* prop(-1,2,q1)*i_* prop(-1,0,q2)*d_(nu3,nu4)*i_* prop(-1,0,q3)*d_(nu5,nu6)*i_* prop(-1,1,q4)*i_* prop(-1,1,q5)*i_* prop(-1,1,q6)*i_* prop(-1,0,q7)*d_(nu1 3,nu1 4)*i_*e*qch2*(q1(nu3)-p2(nu3))*i_*e*qch2*(p1(nu5)-q1(nu5))*i_*e*qch1*(p3(nu4)-q4(nu4))*i_*e*qch1*(q5(nu6)-p4(nu6))*i_*e*qch1*(q4(nu1 3)-q6(nu1 3))*i_*e*qch1*(q6(nu1 4)-q5(nu1 4));
#procedure momentumRouting
Id q2 = p4 + -p3 + -q3;
Id q4 = p4 + -q3;
Id p1 = p2 + p4 + -p3;
Id q1 = p2 + p4 + -p3 + -q3;
Id q6 = p4 + -q3 + -q7;
Id q5 = p4 + -q3;

#endprocedure
*--#]d251l2:

*--#[d252l2:
L [d252l2|o.2.6|3.3|4|o.5|i.6|i|] = 1*i_* prop(-1,0,q1)*d_(nu1,nu2)*i_* prop(-1,1,q2)*i_* prop(-1,2,q3)*i_* prop(-1,0,q4)*d_(nu7,nu8)*i_* prop(-1,0,q5)*d_(nu9,nu1 0)*i_* prop(-1,1,q6)*i_* prop(-1,1,q7)*i_*e*qch1*(p3(nu1)-q2(nu1))*i_*e*qch2*(p1(nu2)-q3(nu2))*i_*e*qch1*(q2(nu7)-p4(nu7))*i_*e*qch2*(q3(nu9)-p2(nu9))*i_*e*qch1*(q7(nu8)-q6(nu8))*i_*e*qch1*(q6(nu1 0)-q7(nu1 0));
#procedure momentumRouting
Id q2 = p4 + -q5;
Id q4 = -q5;
Id p1 = p2 + p4 + -p3;
Id q1 = p3 + q5 + -p4;
Id q3 = p2 + q5;
Id q6 = q7 + -q5;

#endprocedure
*--#]d252l2:

*--#[d253l2:
L [d253l2|2.6.6|o.3|i.5|o.5.6|i||] = 1*i_* prop(-1,0,q1)*d_(nu1,nu2)*i_* prop(-1,1,q2)*i_* prop(-1,2,q3)*i_* prop(-1,0,q4)*d_(nu7,nu8)*i_* prop(-1,0,q5)*d_(nu9,nu1 0)*i_* prop(-1,2,q6)*i_* prop(-1,2,q7)*i_*e*qch1*(p3(nu1)-q2(nu1))*i_*e*qch2*(p1(nu2)-q3(nu2))*i_*e*qch1*(q2(nu7)-p4(nu7))*i_*e*qch2*(q3(nu9)-p2(nu9))*i_*e*qch2*(q7(nu8)-q6(nu8))*i_*e*qch2*(q6(nu1 0)-q7(nu1 0));
#procedure momentumRouting
Id q2 = p4 + -q5;
Id q4 = -q5;
Id p1 = p2 + p4 + -p3;
Id q1 = p3 + q5 + -p4;
Id q3 = p2 + q5;
Id q6 = q7 + -q5;

#endprocedure
*--#]d253l2:

