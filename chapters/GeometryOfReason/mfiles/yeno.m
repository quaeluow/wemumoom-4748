for i = 1:99
x=[1;1;1];
x(1)=rand();
x(2)=(1-x(1))*rand();
x(3)=1-x(1)-x(2);

z=[1;1;1];
z(1)=rand();
z(2)=(1-z(1))*rand();
z(3)=1-z(1)-z(2);

y=[1;1;1];
r=rand();
y(1)=r*x(1)+(1-r)*z(1);
y(2)=r*x(2)+(1-r)*z(2);
y(3)=r*x(3)+(1-r)*z(3);

cc=dkl(z,x)-dkl(y,x)-dkl(z,y)
endfor
