x=[1/3;1/2;1/6];
z=[1/2;5/12;1/12];
y=[.5*(x(1)+z(1));.5*(x(2)+z(2));.5*(x(3)+z(3))];
u=[.5*(y(1)+x(1));.5*(y(2)+x(2));.5*(y(3)+x(3))];
v=[.5*(y(1)+z(1));.5*(y(2)+z(2));.5*(y(3)+z(3))];
ca=dkl(x,u)+dkl(y,v)
va=(-1)*((y(1)*log(x(1)/u(1)))+(y(2)*log(x(2)/u(2)))+(y(3)*log(x(3)/u(3))));
vb=(-1)*((z(1)*log(y(1)/v(1)))+(z(2)*log(y(2)/v(2)))+(z(3)*log(y(3)/v(3))));
cb=va+vb
