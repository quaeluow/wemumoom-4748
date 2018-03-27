## This is the Job Offer problem by Leendert Huisman solved by Infomin
## Across the top: accepts job, rejects job
## Down the first column: job requires moving West, job requires moving East

## Step 1
a=0.05
b=0.3
c=0.45
k=2
A=log((k^3)*(a^4))
B=log(b)
C=log(c)
R=[k*a,b,(k*a)+b;a,c,a+c;(k+1)*a,b+c,1]
## Step 2: replace ABCs by hand and enter manually
function y = stefsolve(x)
y(1)=B-C-x(2)+x(3)
y(2)=A-(4*B)-x(1)+(4*x(2))
y(3)=(4*((1/9)^(1/4))*(exp((1/4)*x(1))))+exp(x(2))+exp(x(3))-1
endfunction
## Step 3: enter manually
[x, info] = fsolve (@stefsolve, [.3;.3;.3])
## Step 4: solution from octave
X=-8.11920
Y=-1.27780
Z=-0.87231
## Step 5
x=(((1/9)^(1/4))*(exp(X))^(1/4))
y=exp(Y)
z=exp(Z)
S=[3*x,y,(3*x)+y;x,z,x+z;4*x,y+z,1]
## for a 2-step flow with manual entry in between see t1.m

y(1)=(x(1)*(d-log(1-x(1))))+((1-x(1))*(c-log(x(1))))-((c-log(x(1)))*(d-log(1-x(1)))*((a*(c-log(x(1))))+(b*(d-log(1-x(1))))))
y(1)=(x(1)*((-0.51083)-log(1-x(1))))+((1-x(1))*((-0.91629)-log(x(1))))-(((-0.91629)-log(x(1)))*((-0.51083)-log(1-x(1)))*((0.4*((-0.91629)-log(x(1))))+(0.6*((-0.51083)-log(1-x(1))))))
y(1)=(x(1)*(d-log(1-x(1))))+((1-x(1))*(c-log(x(1))))-((c-log(x(1)))*(d-log(1-x(1)))*((a*(c-log(x(1))))+(b*(d-log(1-x(1))))))
y(1)=(x(1)*(d-log(1-x(1))))+((1-x(1))*(c-log(x(1))))-((c-log(x(1)))*(d-log(1-x(1)))*((a*(c-log(x(1))))+(b*(d-log(1-x(1))))))
