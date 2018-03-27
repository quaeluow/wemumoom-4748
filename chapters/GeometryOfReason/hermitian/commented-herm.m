# a=[1/3;1/3;1/3];
# b=[1/2;1/4;1/4];
# c=[2/5;2/5;1/5];

# a=[1/3;1/3;1/3];
# b=[1/2;1/4;1/4];
# c=[49/100;50/100;1/100];

# H=[0,dkl(a,b),dkl(a,c);dkl(b,a),0,dkl(b,c);dkl(c,a),dkl(c,b),0]
# HSY=.5*(H+H')
# HSK=.5*(H-H')

# a=[1/3;1/3;1/3];
# b=[1/2;1/4;1/4];
# c=[2/5;2/5;1/5];
# D=[0,dkl(a,b),dkl(a,c);dkl(b,a),0,dkl(b,c);dkl(c,a),dkl(c,b),0]

# r1=[v(1,1);v(2,1);v(3,1)]
# r2=[v(1,2);v(2,2);v(3,2)]
# r3=[v(1,3);v(2,3);v(3,3)]
# coef1=(-1)*(((aa3^2)+(bb3^2))+(((aa1)+(i*bb1))^2)+(((aa2)-(i*bb2))^2))
# coef2=2*((aa1*aa2*aa3-aa1*bb2*bb3-bb1*aa2*bb3-bb1*bb2*aa3)-(i*(bb1*bb2*bb3-bb1*aa2*aa3-aa1*bb2*aa3-aa1*aa2*bb3)))
# bpp=aa1*((bb2*aa3)-(aa2*bb3))
# phiAB=A'*Ll*B
# phiAC=A'*Ll*C
# phiBC=B'*Ll*C
# phiBA=B'*Ll*A
# phiCA=C'*Ll*A
# phiCB=C'*Ll*B
# phiAA=A'*Ll*A
# phiBB=B'*Ll*B
# phiCC=C'*Ll*C

# The following refers to work done in Schmierbuch, page 1641ff
# disp("I am not sure why Chino needs X, OS, and OK.");
# disp("I appear to be finished when I have L.");
# disp("Now check if L is positive or negative definite, i.e. x'Lx>0 for all x.");
# disp(L);
# aa=D(1,2)+D(2,1)
# ba=D(1,2)-D(2,1)
# ab=D(1,3)+D(3,1)
# bb=D(1,3)-D(3,1)
# ac=D(2,3)+D(3,2)
# bc=D(2,3)-D(3,2)
# A=((-1)*((aa^2)+(ba^2)+(ab^2)+(bb^2)))+(ac^2)+(bc^2)
# xa=D(1,2)
# xb=D(1,3)
# xc=D(2,3)
# ya=D(2,1)
# yb=D(3,1)
# yc=D(3,2)
# B=(((xa*xb*xc)+(xa*xb*yc)+(ya*xb*xc)+(ya*yb*yc)+(xa*yb*yc)+(ya*xb*xc))+((-1)*((xa*yb*xc)+(ya*xb*yc))))+(i*(((xa*yb*xc)+(xa*yb*yc)+(xa*xb*xc)+(ya*yb*xc))+((-1)*((ya*xb*xc)+(ya*xb*yc)+(xa*xb*yc)+(ya*yb*yc)))))
# sol=roots([1,0,A,2*B])

# aa =  5
# ba = -1
# ab =  2
# bb =  4
# ac =  3
# bc = -1
# A = -36
# xa =  2
# xb =  3
# xc =  1
# ya =  3
# yb = -1
# yc =  2
# B =  10 - 36i
# sol =

#   -6.41705 + 0.82903i
#    5.98328 + 1.02343i
#    0.43378 - 1.85246i

# These ought to be zero:
# s1=Ll(1,1)^3+coef1*Ll(1,1)+coef2
# s2=Ll(2,2)^3+coef1*Ll(2,2)+coef2
# s3=Ll(3,3)^3+coef1*Ll(3,3)+coef2
