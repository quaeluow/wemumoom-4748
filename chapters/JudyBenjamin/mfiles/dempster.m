p1=.25;
p2=.25;
p3=1-p1-p2;
al=.75;
x=al/(1-al); # constraint
pf=1+x+((x**al)); # partition function
q1=1/pf;
q2=x/pf;
q3=((x**al))/pf;
q=[q1;q2;q3]; # this is Bas van Fraassen's normalized odds vector
q
r1=(1-al)/2;
r2=al/2;
r3=.5;
r=[r1;r2;r3]; # this is the nov from minimizing DKL
r
# function dkl = kuledi (v)
# dkl = (.25*log(.25/v(1,1)))+(.25*log(.25/v(2,1)))+(.5*log(.5/v(3,1)));
# # dkl = log(v(3,1));
# endfunction
# dklbvf=kuledi(q);
# dklbvf
# dklluk=kuledi(r); # run this and you'll see that dklbvf is greater than dklluk -- I'm better at minimizing!
# dkllukpa1=.25;
d=(p1*q1)+(p2*q2)+(p3*q3);
c1=(p1*q1)/d;
c2=(p2*q2)/d;
c3=(p3*q3)/d;
c=[c1;c2;c3];
c


