aa=[.4,.3,.2,.1]
bb=[.3;.6;.04;.06]
R=(bb*aa)'
c0=cc(1,3)+cc(1,4)+cc(2,3)+cc(2,4)+cc(3,1)+cc(3,3)
c=1-c0
C=[c,c,0,c;c,c,c,c;0,0,0,c;0,0,c,c]
W=R.*C'
