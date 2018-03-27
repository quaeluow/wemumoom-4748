function retval = simtopln(x,y,z)
if (x<y)

if (x<z)
u=x
v=y;
w=z;
k=1;
else
v=x;
w=y;
u=z;
k=3;
endif

else
if (y>z)
v=x;
w=y;
u=z;
k=3;
else
v=x;
u=y;
w=z;
k=2;
endif
endif

v=v-u;
w=w-u;
r=(1/(1-v-w))-1;
phi=((2*pi*(k-1))/3)+((4/3)  *(atan(v/w)));
retval=[r;phi];
endfunction
