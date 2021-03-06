# sage: p1=.25
# sage: p2=.25
# sage: p3=.5
# sage: r1=4
# sage: r2=0
# sage: r3=1
# sage: aa=1
# sage: q1,q2,q3,ll1,ll0=var('q1,q2,q3,ll1,ll0')
# sage: eq1=q1+q2+q3==1
# sage: eq2=(r1*q1)+(r2*q2)+(r3*q3)==aa
# sage: eq3=p1*exp(p1*(ll0+(ll1*r1))*(1/(q1-p1)))==q1
# sage: eq4=p2*exp(p2*(ll0+(ll1*r2))*(1/(q2-p2)))==q2
# sage: eq5=p3*exp(p3*(ll0+(ll1*r3))*(1/(q3-p3)))==q3

# function y = stefsolve(x)
# y(1)=x(1)+x(2)+x(3)-1
# y(2)=(4*x(1))+(0*x(2))+(1*x(3))-1
# y(3)=exp(log(.25)-1-x(5)-(x(4)*4))-x(1)
# y(4)=exp(log(.25)-1-x(5)-(x(4)*0))-x(2)
# y(5)=exp(log(.25)-1-x(5)-(x(4)*1))-x(3)
# endfunction

function y = stefsolve(x)
y(1)=x(1)+x(2)+x(3)-1
y(2)=(4*x(1))+(0*x(2))+(1*x(3))-1
y(3)=exp(log(.25)-1-x(5)-(x(4)*4))-x(1)
y(4)=exp(log(.25)-1-x(5)-(x(4)*0))-x(2)
y(5)=exp(log(.50)-1-x(5)-(x(4)*1))-x(3)
endfunction
