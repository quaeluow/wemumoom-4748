a=.01;
b=-.99;
c=-1.99;
x=roots([a,b,c]);
x
y=x(1,1);
y
ot=(y^(-1))+1+y;
q1=y^(-1)/ot;
q2=1/ot;
q3=y/ot;
q=[q1;q2;q3];
q


