q=.5; # q is P(A_{2}|A_{1}\cup{}A_{2})
t=q/(1-q);
ep=(1+t+(t*(log(t)/log(2))))/t;
x=2**(-ep);
q=[x;t*x;1-x-(t*x)];
q
