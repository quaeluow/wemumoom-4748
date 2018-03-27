size(2304pt,1512pt);
real x=1.58;
real y=1.03;

// real fl=-1;
// real fr=15;
// real fu=20;
// real fd=-1;
// path frame=((fl*m,fu*m)--(fr*m,fu*m)--(fr*m,fd*m)--(fl*m,fd*m)--cycle);
// draw(frame,linewidth(0));
// for the next function, this would be much better for a frame:// real mgx=.25;// real mgy=.25;// pair framesw=shift((-mgx*m,-mgy*m))*x0000;// pair framenw=shift((-mgx*m,mgy*m))*x0004;// pair framene=shift((mgx*m,mgy*m))*x0604;// pair framese=shift((mgx*m,-mgy*m))*x0600;// path frame=(framesw--framenw--framene--framese--cycle);// draw(frame,linewidth(0));
pair ML=(0*x,4*y);
pair MR=(8*x,4*y);
pair TA=(2*x,8*y);
pair TB=(4*x,8*y);
pair TC=(6*x,8*y);
pair LA=(2*x,0*y);
pair LB=(4*x,0*y);
pair LC=(6*x,0*y);
pen sline=linewidth(3);
path h=ML--MR;
path va=TA--LA;
path vb=TB--LB;
path vc=TC--LC;
draw(h,sline);
draw(va,sline);
draw(vb,sline);
draw(vc,sline);

// see http://webdesign.about.com/od/colorcharts/l/bl_namedcolors.htm for colours
// for Venn-diagram style intersections see the clip command in xthoughts.asy
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
