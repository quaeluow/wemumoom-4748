A=[1/3,1/2,1/6];
a=threetwo(A);
sot=2^.5;
sth=3^.5;
sos=6^.5;
sft=(1/3)^.5;
b=(sft*a(1,1))-a(1,2);
c=(sft*a(1,1))+a(1,2);

f1x=[sot,1;1,0];
f1y=[sos;a(1,1)];
f1=f1x\f1y

f2x=[sft,-1;sth,1];
f2y=[b;sos];
f2=f2x\f2y

f3x=[0,1;sft,1];
f3y=[0;c];
f3=f3x\f3y

f4x=[0,1;1,0];
f4y=[0;a(1,1)];
f4=f4x\f4y

f5x=[0,1;sft,-1];
f5y=[0;b];
f5=f5x\f5y

f6x=[sth,-1;sft,1];
f6y=[0;c];
f6=f6x\f6y
