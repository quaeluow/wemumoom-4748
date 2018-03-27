## threetwo converts 3d coordinates to 2d frontal view of simplex in 3d
## twothree is the inverse of threetwo
## finds (find "s") finds s when q, r, and rs are given in an isosceles triangle
## test1 tests if s is the right solution
## m1487 is for geometry
## m1493 is for info

## Scenario 1 Schmierbuch p. 1491
## q=[0.50876,0.13934,0.35190]
## r=[1/3,1/3,1/3]
## s=[]
## rs=.58336
## ll=.7

## Scenario 2 Schmierbuch p. 1493
q=[0.68068,0.15323,0.16609];
qh=[0.68068,0.15323,0.16609];
r=[1/3,1/3,1/3];
rh=[1/3,1/3,1/3];
s=[0.449399,0.044347,0.506253];
sh=[0.466624,0.050000,0.483376];
ll=.3;
l1=r+(ll*(s-r))
l2=r+((1-ll)*(s-r))
l1h=rh+(ll*(sh-rh))
l2h=rh+((1-ll)*(sh-rh))
d1=dkl(qh,rh);
d2=dkl(qh,sh);
qt=threetwo(q)
rt=threetwo(r)
st=threetwo(s)
l1t=threetwo(l1)
l2t=threetwo(l2)
qht=threetwo(qh)
rht=threetwo(rh)
sht=threetwo(sh)
l1ht=threetwo(l1h)
l2ht=threetwo(l2h)

## s1, s2, s3 must fulfill the following equations:

## s1+s2+s3=1
## ((q(1)*log(q(1)/r(1)))+(q(2)*log(q(2)/r(2)))+(q(3)*log(q(3)/r(3))))-((q(1)*log(q(1)/s(1)))+(q(2)*log(q(2)/s(2)))+(q(3)*log(q(3)/s(3))))

## see function finds


