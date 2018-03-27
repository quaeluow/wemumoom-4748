a=[1/2;1/2];
b=[1/10;9/10];
c=[0;1];

H=[0,dkl2(a,b);dkl2(b,a),0]
E=[0,euc2(a,b);euc2(b,a),0]
F=[0,euc2(b,c);euc2(c,b),0]
HSY=.5*(H+H')
HSK=.5*(H-H')

