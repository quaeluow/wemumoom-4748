a=[1/3;1/2;1/6];
b=[1/2;3/8;1/8];
c=[1/2;5/12;1/12];

h12=dkl(a,b);
h13=dkl(a,c);
h21=dkl(b,a);
h23=dkl(b,c);
h31=dkl(c,a);
h32=dkl(c,b);

e12=euc(a,b);
e13=euc(a,c);
e21=euc(b,a);
e23=euc(b,c);
e31=euc(c,a);
e32=euc(c,b);

H=[0,h12,h13;h21,0,h23;h31,h32,0]
E=[0,e12,e13;e21,0,e23;e31,e32,0]
HSY=.5*(H+H')
HSK=.5*(H-H')

