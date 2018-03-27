z=[0;.2;.8];
m=[1/3;1/3;1/3];
mm=.23;
ll=.01;
for i=1:3
x(i)=((1-ll+(ll*mm))*m(i))+((ll-(ll*mm))*z(i));
endfor
for i=1:3
y(i)=(((1-ll)*(1-mm))*m(i))+((ll+mm-(ll*mm))*z(i));
endfor
h=y.-x;
s=0;
for i=1:3
s=s+(h(i)*log(y(i)/x(i)))-((h(i)^2)/x(i));
endfor
j=.02.*h;
z1=dkl(y,x)
d1=euc(m,x)
xs=x.+j;
ys=y.+j;
z2=dkl(ys,xs)
d2=euc(m,xs)

