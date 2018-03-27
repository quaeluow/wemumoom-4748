# Let's approach this like Archimedes would have.

# How can we generate a point uniformly in a triangle ABC, where \
#     |AB|=|BC|? Let's make this easier by extending to a parallelogram \
#     ABCD. It's easy to generate points uniformly in ABCD. We uniformly \
#     pick a random point X on AB and Y on BC and choose Z such that \
#     XBYZ is a parallelogram. To get a uniformly chosen point in the \
#     original triangle we just fold any points that appear in ADC back \
#     down to ABC along AC.

r1=unifrnd(0,1);
r2=unifrnd(0,1);
if (r1>r2)
  s1=r1;
  s2=r2;
else
  s1=r2;
  s2=r1;
endif
p1=[1-s1;s1-s2;s2]

r1=unifrnd(0,1);
r2=unifrnd(0,1);
if (r1>r2)
  s1=r1;
  s2=r2;
else
  s1=r2;
  s2=r1;
endif
p2=[1-s1;s1-s2;s2]

r1=unifrnd(0,1);
r2=unifrnd(0,1);
if (r1>r2)
  s1=r1;
  s2=r2;
else
  s1=r2;
  s2=r1;
endif
p3=[1-s1;s1-s2;s2]

r1=unifrnd(0,1);
r2=unifrnd(0,1);
if (r1>r2)
  s1=r1;
  s2=r2;
else
  s1=r2;
  s2=r1;
endif
p4=[1-s1;s1-s2;s2]

r1=unifrnd(0,1);
r2=unifrnd(0,1);
if (r1>r2)
  s1=r1;
  s2=r2;
else
  s1=r2;
  s2=r1;
endif
p5=[1-s1;s1-s2;s2]

r1=unifrnd(0,1);
r2=unifrnd(0,1);
if (r1>r2)
  s1=r1;
  s2=r2;
else
  s1=r2;
  s2=r1;
endif
p6=[1-s1;s1-s2;s2]

