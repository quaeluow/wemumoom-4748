size(300pt,300pt);
real m=1;

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

real mgx=.5;
real mgy=.5;
pair framesw=shift((-mgx*m,-mgy*m))*x0000;
pair framenw=shift((-mgx*m,mgy*m))*x0004;
pair framene=shift((mgx*m,mgy*m))*x0604;
pair framese=shift((mgx*m,-mgy*m))*x0600;
path frame=(framesw--framenw--framene--framese--cycle);
draw(frame,linewidth(0));

// pen q1colour=rgb(154,205,50); // yellowgreen on http://webdesign.about.com/od/colorcharts/l/bl_namedcolors.htm
// pen q2colour=rgb(255,165,0); // orange
// pen q3colour=rgb(72,209,204); // mediumturquoise

pen q1colour=lightred;
pen q2colour=mediumred;
pen q3colour=cyan;

path q31=(x0002--x0202--x0203--x0003--cycle);
fill(q31,q3colour);
path q32=(x0203--x0303--x0304--x0204--cycle);
fill(q32,q3colour);
path q33=(x0201--x0301--x0302--x0202--cycle);
fill(q33,q3colour);
path q34=(x0000--x0100--x0101--x0001--cycle);
fill(q34,q3colour);

path q11=(x0403--x0404--x0504--x0503--cycle);
fill(q11,q1colour);

path q21=(x0300--x0400--x0401--x0301--cycle);
fill(q21,q2colour);
path q22=(x0401--x0601--x0602--x0402--cycle);
fill(q22,q2colour);

pen divs=linewidth(3);
pen divvs=linewidth(.2);
path circumfer=(x0000--x0600--x0604--x0004--cycle);
draw(circumfer,divs);
path midv=(x0300--x0304);
draw(midv,divs);
path midh=(x0302--x0602);
draw(midh,divs);
path divv1=(x0100--x0104);
draw(divv1,divvs);
path divv2=(x0200--x0204);
draw(divv2,divvs);
path divv3=(x0300--x0304);
draw(divv3,divvs);
path divv4=(x0400--x0404);
draw(divv4,divvs);
path divv5=(x0500--x0504);
draw(divv5,divvs);
path divv6=(x0600--x0604);
draw(divv6,divvs);
path divh1=(x0001--x0601);
draw(divh1,divvs);
path divh2=(x0002--x0602);
draw(divh2,divvs);
path divh3=(x0003--x0603);
draw(divh3,divvs);
path divh4=(x0004--x0604);
draw(divh4,divvs);

label("$A_{3}$",x0004,SW);
label("$A_{1}$",x0604,SE);
label("$A_{2}$",x0600,NE);

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


