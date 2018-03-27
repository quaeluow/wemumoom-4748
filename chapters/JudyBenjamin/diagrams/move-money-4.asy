real s=800;

size(s*pt,s*pt);

real m=1;
real n=.6;

real fl=-2;
real fr=7;
real fu=.3;
real fd=-1;

path frame=((fl*m,fu*m)--(fr*m,fu*m)--(fr*m,fd*m)--(fl*m,fd*m)--cycle);

draw(frame,linewidth(0));

real x10=-1*m;
real x11=0*m;
real x12=1.3*m;
real x01=2.5*m;
real x02=3*m;
real x03=4*m;
real x04=5*m;
real x05=6*m;

real d=0.35*n;
real v=0.3*n;
real c=-v;
real point=5*n;
real e=d/3;

pair y10=(x10,0);
pair y11=(x11,0);
pair y12=(x12,0);
pair y01=(x01,0);
pair y02=(x02,0);
pair y03=(x03,0);
pair y04=(x04,0);
pair y05=(x05,0);

pair z11=(x11,c-0*v);
pair z12=(x12,c-1*v);
// pair z01=(x01,c-2*v);
pair z02=(x02,c-2*v);
pair z03=(x03,c-3*v);
pair z04=(x04,c-4*v);


pair a11=(x11+d,c-0*v);
pair a12=(x12+d,c-1*v);
pair a02=(x02-d+e,c-2*v);
pair a03=(x03-d+e,c-3*v);
pair a04=(x04-d+e,c-4*v);

pair b11=(x01-d,c-0*v);
pair b12=(x01-d,c-1*v);
pair b02=(x01+d,c-2*v);
pair b03=(x01+d,c-3*v);
pair b04=(x01+d,c-4*v);

pair c11=(x01,c-0*v);
pair c12=(x01,c-1*v);
pair c02=(x01,c-2*v);
pair c03=(x01,c-3*v);
pair c04=(x01,c-4*v);

draw(a11--b11,Arrow(point));
draw(a12--b12,Arrow(point));
draw(a02--b02,Arrow(point));
draw(a03--b03,Arrow(point));
draw(a04--b04,Arrow(point));

path p=y10--y05;

draw(p);
// draw(a1--a2,Arrow(point));
// draw(a3--a4,Arrow(point));

dot(y11);
dot(y12);
dot(y01);
dot(y02);
dot(y03);
dot(y04);

label("{\centering Nov 1}",y11,N);
label("{\centering Dec 8}",y12,N);
label("{\centering Jan 15}",y01,N);
label("{\centering Feb 1}",y02,N);
label("{\centering Mar 1}",y03,N);
label("{\centering Apr 1}",y04,N);

label("{\centering \$300}",z11);
label("{\centering \$500}",z12);
// label("\parbox{1in}{\centering focal date}",y01);
label("{\centering \$$x$}",z02);
label("{\centering \$$x$}",z03);
label("{\centering \$$x$}",z04);

label("{\centering $d_{1}$}",c11);
label("{\centering $d_{2}$}",c12);
label("{\centering $p_{1}$}",c02);
label("{\centering $p_{2}$}",c03);
label("{\centering $p_{3}$}",c04);

