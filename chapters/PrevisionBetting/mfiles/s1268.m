a=.001
b=.251
c=.499
k=249
R=[k*a,b,(k*a)+b;a,c,a+c;(k+1)*a,c+b,1]
K1=1+(.75*(log(3)))-(.75*(log(k)))-(log(a))
K2=1-log(b)
K3=1-log(c)
K=(4*(exp(-K1)))+(exp(-K2))+(exp(-K3))
la=log(K)
x=exp(-K1-la)
y=exp(-K2-la)
z=exp(-K3-la)
S=[3*x,y,(3*x)+y;x,z,x+z;4*x,y+z,1]
