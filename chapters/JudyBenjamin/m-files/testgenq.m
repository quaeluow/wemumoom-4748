log12=log(12)/log(2);
log12
s=2**((2-(3*log12))/4);
x=s/(1+(4*s));
q=[x;(3*x);(1-x-(3*x))];
q
t=3;
logt=log(t)/log(2);
logx=log(x)/log(2);
logexp=log(1-(t*x)-x)/log(2);
der=((t*logt)+t+1)+((1+t)*logx)-((t+1)*logexp);
b=(t*logt)+t+1;
c=exp(-b/(1+t));
y=c/(1+(c*t)+c);
r=[y;t*y;1-y-(y*t)];
b=(t*logt)+t+1;
c=exp(-b/(1+t));
y=c/(1+(c*t)+c);
logy=log(y)/log(2);
logeyp=log(1-(t*y)-y)/log(2);
der=((t*logt)+t+1)+((1+t)*logy)-((t+1)*logeyp);
der

