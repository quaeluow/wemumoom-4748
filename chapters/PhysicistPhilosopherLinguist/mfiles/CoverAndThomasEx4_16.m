r=1/log(2)
## coefficients and roots for det(A-llI)
c1=[1,0,-1,-1]
b1=roots(c1)
ll=b1(1,1)
## coefficients and roots for maxH(X) dependent on aa
c2=[1,-1,2,-1]
b2=roots(c2)
aa=b2(3,1)
## maximal H(X) given aa
hx=(-1)*((1/(3-aa))*(aa*log(aa)*r)+(1/(3-aa))*((1-aa)*log(1-aa)*r))
## log(ll) which is supposed to equal hx
logll=log(ll)*r

## the Wagner-type problem page 1115, see work page 1127ff
## calculating the joint probabilities Q_{w}
oo=[.25;.35;.4;0]
th=[.39,.35,.26,0]
q1=oo*th
## adding a prime to a matrix transposes it in octave
q2=q1'
t1=1/.39
t2=1/.35
t3=1/.26
tt=[t1,0,0;0,t2,0;0,0,t3]




