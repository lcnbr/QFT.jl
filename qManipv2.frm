*** Form program to manipulate QGRAF output files
** Depends on a specific style file

#define FILE "../QGRAFout/form/inoutp1"
#define kinematics "bars"
#define masses "0"
*Possibilities: bars inin ininasinout inout outout
***Supress output to screen
#- 

#define n "13";


**** setting dimension, external-momenta, loop-momenta,... 

** DnDimensional regularisation in D dimensions 
Dimension D; 

Auto V p,q,k,l;
Auto I nu;
CF prop,dot(symmetric),dots(symmetric),propproc,propmark,propagators,coef;
S e,qch1,qch2,a,b,m1,m2,u;

Set extMom:p,p1,...,p'n';
Set loopMom:k, k1,...,k'n',q,q1,...,q'n',l,l1,...,l'n';

*=========================================================================*

Off Statistics;

#include diags.frm #d1l0



#procedure todot
id p?.q?=dot(p,q);
argument;
id p?.q?=dot(p,q);
argument;
id p?.q?=dot(p,q);
endargument;
endargument;
#endprocedure

*==============================================================================*
* Replace all dot products with function dot, to improve pattern matching

Id prop(a?,b?,p?) = prop(a,b,p.p);


#call momentumRouting
argument;
#call  momentumRouting
argument;
#call  momentumRouting  
endargument;
endargument;

.sort
Print;
.sort

*=========================================================================*
*==========================================================================*

* Now that the feynman rules have been applied, we can further subsitute variables and manipulate the integrands.

* We want to write the numerator of the integrand as a products of the inverse propagators.

*--#[


#switch 'kinematics'
#case inin
* p1+p2+p3+p4=0
  Id p4=-p1-p2-p3;


  argument;
* p1+p2+p3+p4=0
  Id p4=-p1-p2-p3;
  endargument;
  #call todot
  #if 'masses'
  argument;
  Id dot(p1,p1)=m1^2;
  Id dot(p4,p4)=m1^2;
  Id dot(p2,p2)=m2^2;
  Id dot(p3,p3)=m2^2;
  endargument;
  Id dot(p1,p1)=m1^2;
  Id dot(p4,p4)=m1^2;
  Id dot(p2,p2)=m2^2;
  Id dot(p3,p3)=m2^2;
  #endif
#break
#case bars
  argument;
  Id p1=-(pb1-q/2);
  Id p2=-(pb2+q/2);
  Id p3=(pb2-q/2);
  Id p4=(pb1+q/2);
  endargument;
  Id p1=-(pb1-q/2);
  Id p2=-(pb2+q/2);
  Id p3=(pb2-q/2);
  Id p4=(pb1+q/2);
  #call todot
  #if 'masses'

  argument;
  Id dot(pb1,pb1)=mb1^2;
  Id dot(pb2,pb2)=mb2^2;
  endargument;

  Id dot(pb1,pb1)=mb1^2;
  Id dot(pb2,pb2)=mb2^2;
  #endif

#break
#case ininasinout
* p1+p2+p3+p4=0
  Id p4=-p1-p2-p3;
  Id p3=-p2-q;

  argument;
* p1+p2+p3+p4=0
  Id p4=-p1-p2-p3;
  Id p3=-p2-q;
  endargument;
  #call todot
  #if 'masses'
  argument;
  Id dot(p1,p1)=m1^2;
  Id dot(p4,p4)=m1^2;
  Id dot(p2,p2)=m2^2;
  Id dot(p3,p3)=m2^2;
  endargument;
  Id dot(p1,p1)=m1^2;
  Id dot(p4,p4)=m1^2;
  Id dot(p2,p2)=m2^2;
  Id dot(p3,p3)=m2^2;
  #endif

#break
#case inout

* p1+p2=q1+q2
  Id q2=p1+p2-q1;
  Id q1 =p1+q;

  argument;
* p1+p2=q1+q2
  Id q2=p1+p2-q1;
  Id q1 =p1+q;
  endargument;
  #call todot
  #if 'masses'
  argument;
  Id dot(p1,p1)=m1^2;
  Id dot(q1,q1)=m1^2;
  Id dot(p2,p2)=m2^2;
  Id q2.q2=m2^2;
  endargument;
  Id dot(p1,p1)=m1^2;
  Id dot(q1,q1)=m1^2;
  Id dot(p2,p2)=m2^2;
  Id q2.q2=m2^2;
  #endif

#break
#case outout
#break
#endswitch
    #call todot
*--#]
.sort
factorize;
.sort
Print;
.sort
unfactorize;
.sort

L [propagators]=propagators;
L [count]=u;


#do i=1,1
  if(match(prop(?a$a))) redefine i "0";
  if (match(propagators(?a,prop($a),?b))=0);*term is new
    id propagators(?a)=propagators(?a,prop($a));*add to terms
    Id prop($a)=propproc($a);
  endif;

  .sort
#enddo
id propproc(?a)=prop(?a);

.sort
L copypropagators=[propagators];
#write "All propagators =%E\n",[propagators];
.sort
hide [propagators];


*==============================================================================*
* Explode sum in prop arguments
.sort
polyfun coef; *turns coefs into coef(coefs)

splitarg prop;*split out all args into terms
argument prop;
    id dot(p?,q?)=coef(coeff_)* dot(p,q) ; 
endargument;
factarg prop;* Further split out arguments into coefs and terms

argument propagators;
splitarg prop;*split out all args into terms
argument prop;
    id dot(p?,q?)=coef(coeff_)* dot(p,q) ; 
endargument;
factarg prop;* Further split out arguments into coefs and terms
endargument;


.sort
#write "Exploded sum in propagators: %E\n",copypropagators;
.sort
PolyFun;
*==============================================================================*
S count;
* Count the number of dots with loop momenta inside propagators()
Id prop(?a)=prop(?a,0);
argument propagators;
Id prop(?a)=prop(?a,0);
endargument;

#do i=1,1
argument propagators;
  if(match(prop(?a$a,dot(p?loopMom$p,q?$q),?b$b,count?$count)));
  redefine i "0";
  Id prop($a,dot($p,$q),$b,$count)=prop($a,dots($p,$q),$b,$count+1);
  endif;
endargument;
  .sort
#enddo
argument;
argument;
id dots(p?,q?)=dot(p,q);
endargument;
endargument;

* add dot count to all propagators
.sort
#$max=0;
#do i=1,1
argument propagators;
  if(match(prop(?a$a,count?$count))) redefine i "0";
endargument;
.sort
argument propagators;
  Id prop($a,$count)=propproc($a,$count);
endargument;
  $max=max_($count,$max);
  Id prop($a,0)=prop($a,$count);
#enddo

argument propagators;
id propproc(?a)=prop(?a);
endargument;


.sort
#write "Added loopdot count to propagators =%E\n",copypropagators;
.sort
*============================================================================80*
*Now all propagators are in the form:
* prop(power[\nu],massIndex,{dot,coef},fromIndex,toIndex,loopdotcount)
*We want to isolate the loopdot that we want to use to cancel.Suppose we have a
*scalar product S that is present in a propator
*                   prop(nu,...,S,coef,...) 
*then we can write S*prop(nu,...,S,coef,...) as the same propator with an addi-
*tional power minus prop(1,...,..)=sum of all other Ss, times that same propator
*    S*prop(nu,...,S,coef,...)=
*             = 1/coef*prop(nu+1,...,S,coef,...)
*               -1/coef*prop(nu,...,S,coef,...)*(prop(1,...,...);
*We first identify which propagator we use to cancel which dot product. Of
*course the only ones of interest ore those that include loop momenta. We thus
*count those in each propagator. Then replace using the above rule starting from
*those propagators with the lowest count.


.sort
S loopdotcount
S power,massIndex,Coef,loopdotcount,summand;
CF mass,assoc, matches,dt(symmetric);
Id prop(?a,loopdotcount?)=
    prop(?a,0,loopdotcount);*now use last for summation.
argument propagators;
Id prop(?a,loopdotcount?)=
    prop(?a,0,loopdotcount);*now use last for summation.
endargument;

.sort
* do loop to identify match terms
*--#[ mark terms like dot(loopmom,mom)*prop(nu,mi,...,dot(loopmom,mom),...,summand,loopdotcount) set to propproc(...,dot(loopmom,mom),summand,loopdotcount)
L [matches]=matches;
L max=$max;

#procedure matchdotsv2(max)
#write "Call matchdotsv2 with %s ",`max';
.sort
id dot(p?,q?)=dt(p,q);
.sort
#do loopdotcount=1,`max'
  #do i=1,1
  #$argMatch=0;
  .sort
  if (match(dt(p?loopMom$p,q?$q)
      *prop(?a$a,dot(p?,q?),Coef?$Coef,?b$b,summand?$sum,'loopdotcount')));
    $argMatch=1;*found a term
    redefine i "0";
  endif;
*  Print "dots      %t";
  .sort
  #if `$argMatch'
    #write "Found a match! with %s arguments, with momentum  %$ and %$\n",`loopdotcount',$p,$q,
  #endif

  .sort
  if ($argMatch);
  id prop(?a,dot($p,$q),?b)=
            prop(?a,dots($p,$q),?b);*mark the dot product
  id prop($a,dots($p,$q),$Coef,$b,$sum,'loopdotcount')=
        propproc($a,$b,dots($p,$q),$Coef,$sum,'loopdotcount');*mark the propagator
  argument;
  id prop(?a,dot($p,$q),?b)=
            prop(?a,dots($p,$q),?b);*mark the dot product
  id prop($a,dots($p,$q),$Coef,$b,$sum,'loopdotcount')=
        propproc($a,$b,dots($p,$q),$Coef,$sum,'loopdotcount');*mark the propagator
  endargument;
  endif;
  .sort
  #enddo
#enddo
#endprocedure

#call matchdotsv2(`$max') 

.sort
#write "Commuted dots to mark the selected dot =%E",copypropagators;
.sort


CF assocProc,summation;
S markedCoef,otherPower;









.sort

#procedure eliminateDots(max)
#do i=1,1
#$match=0;
.sort
  argument propagators;
  if (match(propproc(power?$nu,massIndex?$mi,?a$a,dots(p?$p,q?$q),Coef?$Coef,0,loopdotcount?$loopdotcount)));
  redefine i "0";
  $match=1;
  endif;
*  if($match)
*  Print "propagators %$ on dot(%$,%$)  %t",$match,$p,$q; 
  endargument;
*   Print "diag   %t";
  .sort
  #if '$match'
    argument propagators;
    id propproc($nu,$mi,$a,dots($p,$q),$Coef,0,$loopdotcount)=propmark($nu,$mi,$a,dot($p,$q),$Coef,0,$loopdotcount);
    endargument;
    #write "Reduce dot(%$,%$)",$p,$q
    Id dt($p,$q)= 1/$Coef*propproc(1,$mi,$a,dots($p,$q),$Coef,0,$loopdotcount)-1/$Coef*propmark(1,$mi,$a,  0 ,$Coef,0,$loopdotcount);
    Id propproc(power?,?a)*propproc(otherPower?,?a)=propproc(power+otherPower,?a);
    repeat;
    Id propmark(1,massIndex?,?a,dot(p?,q?),Coef?,summand?,loopdotcount?)
        =propmark(1,massIndex,?a,summand+Coef*dt(p,q),loopdotcount);
    Id propmark(1,massIndex?,?a,dots(p?,q?),Coef?,summand?,loopdotcount?)
        =propmark(1,massIndex,?a,summand+Coef*dt(p,q),loopdotcount);
    endrepeat;
    Id propmark(1,massIndex?,summand?,?a)=summand+mass(massIndex);
  #endif
  .sort
#call matchdotsv2(`max') 
#write "loop";

#enddo
#endprocedure



#call eliminateDots(`$max') 

* .sort
* factorize [d13l1|i.2.4|o.3|i.4|o|];
* .sort
* Print;
* unfactorize;
* .sort 
* Once all matches are taken care of we can eliminate all processing notation
* And simplify terms

Id propproc(?a)=prop(?a);
Id propmark(?a)=prop(?a);
argument propagators;
Id propproc(?a)=prop(?a);
Id propmark(?a)=prop(?a);
endargument;


* Sum everything up
repeat;
Id prop(?a,dot(p?,q?),Coef?,summand?,loopdotcount?)
        =prop(?a,summand+Coef*dt(p,q),loopdotcount);
Id prop(?a,dots(p?,q?),Coef?,summand?,loopdotcount?)
        =prop(?a,summand+Coef*dt(p,q),loopdotcount);
argument propagators;
Id prop(?a,dot(p?,q?),Coef?,summand?,loopdotcount?)
        =prop(?a,summand+Coef*dt(p,q),loopdotcount);
Id prop(?a,dots(p?,q?),Coef?,summand?,loopdotcount?)
        =prop(?a,summand+Coef*dt(p,q),loopdotcount);
endargument;
endrepeat;


* if the summand = 0 we can remove the term
Id prop(power?,massIndex?,0,loopdotcount?)
        =0;
* if the power = 0, prop  =   1
Repeat;
Id prop(power?,?a)*prop(otherPower?,?a)=prop(power+otherPower,?a);
endrepeat;
Id coef(a?)=a;
argument;
  Id coef(a?)=a;
  argument;
  Id coef(a?)=a;
endargument;
endargument;


Id mass(0)=0;
Id mass(1)=m1^2;
Id mass(2)=m2^2;



.sort

CF TOP;
AutoDeclare CF prop;
S c,d;
#$num=1; ; 


#do i=1,1
  .sort
  argument propagators;
  if (match(prop(power?$nu,?a$a)));
  redefine i "0";
  $match=1;
  endif;
  endargument;
  .sort
  #if '$match'
    argument propagators;
    id prop($nu,$a)=prop`$num'($nu,$a);
    endargument;
    Id prop(power?,$a)=prop`$num'(power); 
  #endif
  .sort

  #$num=$num+1;




#enddo
Id prop1(power?)=TOP(power);

#do i=2,$num
  Id prop`i'(power?)*TOP(?nu)=TOP(?nu,power);
#enddo


.sort

* symplify output

 Format O2;
Print;
.end


.sort
.end

ExtraSymbols,array,di'j';
#optimize dia'j'
#write <test.py> "%O"
#write <test.py> "dia'j'= (%E)", dia'j'



.sort

Format ;
factorize;
Print;
.store
#enddo
.end