function y = threetwo(x)
u2=1+((x(2)/(x(2)+x(3)))^2+((x(3)/(x(2)+x(3)))^2));
v2=((1-(x(2)/(x(2)+x(3))))^2)+((x(3)/(x(2)+x(3)))^2);
u=u2^.5;
v=v2^.5;
psi=1-(((u2+v2-2)/(2*u*v))^2);
k2=((x(1)-1)^2)+(x(2)^2)+(x(3)^2);
m2=.5*v2*psi*k2;
l2=k2-m2;
y=[l2^.5,m2^.5];
endfunction