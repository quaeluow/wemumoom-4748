## get data from m1487.m scenarios
function y=finds(s)
q=[0.68068,0.15323,0.16609];
r=[1/3,1/3,1/3];
y(1)=s(1)+s(2)+s(3)-1;
y(2)=s(2)-.05
y(3)=dkl(q,r)-dkl(q,s)
## y(3)=((q(1)*log(q(1)/r(1)))+(q(2)*log(q(2)/r(2)))+(q(3)*log(q(3)/r(3))))-((q(1)*log(q(1)/s(1)))+(q(2)*log(q(2)/s(2)))+(q(3)*log(q(3)/s(3))))
endfunction
## [s,info]=fsolve(@finds,[.3;.3;.4])
