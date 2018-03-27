a=[1/3;1/3;1/3];
b=[1/2;1/4;1/4];
# phicc positive
# c=[2/5;2/5;1/5];
# phicc negative
c=[1/7;2/7;4/7]
# phicc positive
# c=[.5;.4;.1]
D=[0,dkl2(a,b);dkl2(b,a),0]
# D=[0,2;3,0]
S=0.5*(D+D')
T=0.5*(D-D')
H=S+i.*T
[U,Ll] = eig(H)
disp("Notice that H=U*L*U-conjugate transpose.");
disp("U(r):");
UR=real(U)
disp("U(i):");
UI=imag(U)
X=[
   UR(1,1),UR(1,2),UI(1,1),UI(1,2);
   UR(2,1),UR(2,2),UI(2,1),UI(2,2)]
OS=[
   Ll(1,1),Ll(1,2),0,0;
   Ll(2,1),Ll(2,2),0,0;
   0,0,Ll(1,1),Ll(1,2);
   0,0,Ll(2,1),Ll(2,2)]
OK=[
   0,0,-Ll(1,1),-Ll(1,2);
   0,0,-Ll(2,1),-Ll(2,2);
   Ll(1,1),Ll(1,2),0,0;
   Ll(2,1),Ll(2,2),0,0]

A=[UR(1,1)+i*UI(1,1);UR(1,2)+i*UI(1,2)]
B=[UR(2,1)+i*UI(2,1);UR(2,2)+i*UI(2,2)]

M=[a(1),a(2);b(1),b(2)]
cc=[c(1);c(2)]
ctwo=M\cc
C=ctwo(1).*A+ctwo(2).*B
phicc=C'*Ll*C
# # disp("Distance of C from A:");
# dca=real(C'*Ll*A)+imag(C'*Ll*A)
# # disp("Distance of C from B:");
# dca=real(C'*Ll*B)+imag(C'*Ll*B)
# # disp("Distance of A from C:");
# dca=real(A'*Ll*C)+imag(A'*Ll*C)
# # disp("Distance of B from C:");
# dca=real(B'*Ll*C)+imag(B'*Ll*C)

# # disp("KL-Distance of C from A:");
# kldca=dkl(c,a)
# # disp("KL-Distance of C from B:");
# kldca=dkl(c,b)
# # disp("KL-Distance of A from C:");
# kldca=dkl(a,c)
# # disp("KL-Distance of B from C:");
# kldca=dkl(b,c)















