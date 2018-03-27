x1=1/2;
x2=1/3;
x3=3/8;
x4=1/2;
# testing x1
# x1=((x2-1)/(x4-1))*x3;
# ((x3+x4-1)/(x1+x2-1))-(x3/x1)
# testing x2
# x2=((x1-1)/(x3-1))*x4;
# ((x3+x4-1)/(x1+x2-1))-(x4/x2)
# testing x3
# x3=((x4-1)/(x2-1))*x1;
# -log((x3 + x4 - 1)/(x1 + x2 - 1)) + log(x3/x1)
# testing x4
x4=((x3-1)/(x1-1))*x2;
-log((x3 + x4 - 1)/(x1 + x2 - 1)) + log(x4/x2)

# all confirmed 2015-12-14

