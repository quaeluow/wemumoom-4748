size(600pt,600pt);
real m=1;

// real fl=-1;
// real fr=15;
// real fu=20;
// real fd=-1;
// path frame=((fl*m,fu*m)--(fr*m,fu*m)--(fr*m,fd*m)--(fl*m,fd*m)--cycle);
// draw(frame,linewidth(0));

pair x0000=(0*m,0*m);
pair x0001=(0*m,1*m);
pair x0002=(0*m,2*m);
pair x0003=(0*m,3*m);
pair x0004=(0*m,4*m);
pair x0100=(1*m,0*m);
pair x0101=(1*m,1*m);
pair x0102=(1*m,2*m);
pair x0103=(1*m,3*m);
pair x0104=(1*m,4*m);
pair x0200=(2*m,0*m);
pair x0201=(2*m,1*m);
pair x0202=(2*m,2*m);
pair x0203=(2*m,3*m);
pair x0204=(2*m,4*m);
pair x0300=(3*m,0*m);
pair x0301=(3*m,1*m);
pair x0302=(3*m,2*m);
pair x0303=(3*m,3*m);
pair x0304=(3*m,4*m);
pair x0400=(4*m,0*m);
pair x0401=(4*m,1*m);
pair x0402=(4*m,2*m);
pair x0403=(4*m,3*m);
pair x0404=(4*m,4*m);
pair x0500=(5*m,0*m);
pair x0501=(5*m,1*m);
pair x0502=(5*m,2*m);
pair x0503=(5*m,3*m);
pair x0504=(5*m,4*m);
pair x0600=(6*m,0*m);
pair x0601=(6*m,1*m);
pair x0602=(6*m,2*m);
pair x0603=(6*m,3*m);
pair x0604=(6*m,4*m);
pair x0700=(7*m,0*m);
pair x0701=(7*m,1*m);
pair x0702=(7*m,2*m);
pair x0703=(7*m,3*m);
pair x0704=(7*m,4*m);
pair x0800=(8*m,0*m);
pair x0801=(8*m,1*m);
pair x0802=(8*m,2*m);
pair x0803=(8*m,3*m);
pair x0804=(8*m,4*m);
pair x0900=(9*m,0*m);
pair x0901=(9*m,1*m);
pair x0902=(9*m,2*m);
pair x0903=(9*m,3*m);
pair x0904=(9*m,4*m);



path ofr=(x0000--x0800--x0804--x0004--cycle);
path mline=(x0002--x0802);
path muline=(x0404--x0402);
path mdline=(x0402--x0400);
path horline=(x0002--x0802);
path blueall=(x0002--x0802--x0804--x0004--cycle);
path redsec=(x0000--x0400--x0402--x0002--cycle);
path redhq=(x0400--x0800--x0802--x0402--cycle);
pen ofrpen=linewidth(2);
pen horpen=linewidth(1.5);
pen mpen=dashed+horpen;
pen bluepen=cyan;
pen redsecpen=lightred;
pen redhqpen=mediumred;
fill(blueall,bluepen);
fill(redsec,redsecpen);
fill(redhq,redhqpen);
draw(ofr,ofrpen);
draw(horline,horpen);
draw(muline,mpen);
draw(mdline,horpen);
label("Blue (Second Company)",x0203);
label("Blue (Headquarters)",x0603);
label("Red (Second Company)",x0201);
label("Red (Headquarters)",x0601);
label("$A_{1}$",x0002a);
label("$A_{2}$",x0402a);
label("$A_{3}$",x0004a);

// pen wall=linewidth(3);
// pen redwall=linewidth(3)+rgb(0,255,0);
// path p03=shift((0*m,-8*m))*p01;
// fill(sink1,sinkpen);
// fill(tub,rgb(0,0,139));
// draw(p02,redwall);
// label("Sauna",x0611);
// real square_root_of_two=2**.5;
// path unit_circle=shift(1,1)*circle((0,0),1);
// label("\parbox{1.5in}{\centering \textsf{kilometre (km){\newline}1 km = 1000 metres}}",box25);
// label("\textsf{\normalsize{0}}",x01,NE);
// path kreis=(x08{up}..{left}x02{left}..{down}x04{down}..{right}x06{right}..{up}x08);
// dot(x01--x02--x03--x04--x05--x06--x07--x08);
// fill(shift(c1)*xscale(rx*x)*yscale(ry*y)*unitcircle,ubuntu_yellow);


