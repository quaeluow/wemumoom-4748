p1=.25;
p2=.25;
p3=.5;
r1=4;
r2=0;
r3=1;
aa=1;
x=3^(-.25);
bb=-log(x);
ll1=-bb;
s1=exp(r1*ll1);
s2=exp(r2*ll1);
s3=exp(r3*ll1);
S=s1+s2+s3;
t1=s1/S;
t2=s2/S;
t3=s3/S;
T=(t1*p1)+(t2*p2)+(t3*p3);
q1=(t1*p1)/T
q2=(t2*p2)/T
q3=(t3*p3)/T
w=(4/3)^(1/4)
gg=-log(x)
mm1=-gg
mm0=1-log((p1*exp(r1*mm1))+(p2*exp(r2*mm1))+(p3*exp(r3*mm1)))
v1=p1*exp(mm0-1+r1*mm1)
v2=p2*exp(mm0-1+r2*mm1)
v3=p3*exp(mm0-1+r3*mm1)
# V=v1+v2+v3
# u1=v1/V
# u2=v2/V
# u3=v3/V