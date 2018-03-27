## threetwo converts 3d coordinates to 2d frontal view of simplex in 3d
## twothree is the inverse of threetwo
## finds (find "s") finds s when q, r, and rs are given in an isosceles triangle
## test1 tests if s is the right solution
## m1487 is for geometry
## m1493 is for info

## see https://www.physicsforums.com/threads/equation-of-circle-in-3-dimensions.693967
## Scenario 1 Schmierbuch p. 1491
## q=[0.50876,0.13934,0.35190]
## r=[1/3,1/3,1/3]
## s=[]
## rs=.58336
## ll=.7

## Scenario 2 Schmierbuch p. 1493
q=[0.68068,0.15323,0.16609];
r=[1/3,1/3,1/3];
s=[0.449399,0.044347,0.506253];
rs=.35621;
ll=.7;

## s1, s2, s3 must fulfill the following equations:

## s1+s2+s3=1
## (r1-s1)^2+(r2-s2)^2+(r3-s3)^2=rs^2
## (q1-s1)^2+(q2-s2)^2+(q3-s3)^2=(q1-r1)^2+(q2-r2)^2+(q3-r3)^2

## see function finds


