size(600pt,600pt);
real m=1;
real n=1;

// real fl=-1;
// real fr=15;
// real fu=20;
// real fd=-1;
// path frame=((fl*m,fu*m)--(fr*m,fu*m)--(fr*m,fd*m)--(fl*m,fd*m)--cycle);
// draw(frame,linewidth(0));
// for the next function, this would be much better for a frame:
// real mgx=.25;
// real mgy=.25;
// pair framesw=shift((-mgx*m,-mgy*m))*x0000;
// pair framenw=shift((-mgx*m,mgy*m))*x0004;
// pair framene=shift((mgx*m,mgy*m))*x0604;
// pair framese=shift((mgx*m,-mgy*m))*x0600;
// path frame=(framesw--framenw--framene--framese--cycle);
// draw(frame,linewidth(0));
pair x0000=(0*m,0*n);
pair x0001=(0*m,1*n);
pair x0002=(0*m,2*n);
pair x0003=(0*m,3*n);
pair x0004=(0*m,4*n);
pair x0005=(0*m,5*n);
pair x0006=(0*m,6*n);
pair x0007=(0*m,7*n);
pair x0008=(0*m,8*n);
pair x0009=(0*m,9*n);
pair x0010=(0*m,10*n);
pair x0100=(1*m,0*n);
pair x0101=(1*m,1*n);
pair x0102=(1*m,2*n);
pair x0103=(1*m,3*n);
pair x0104=(1*m,4*n);
pair x0105=(1*m,5*n);
pair x0106=(1*m,6*n);
pair x0107=(1*m,7*n);
pair x0108=(1*m,8*n);
pair x0109=(1*m,9*n);
pair x0110=(1*m,10*n);
pair x0200=(2*m,0*n);
pair x0201=(2*m,1*n);
pair x0202=(2*m,2*n);
pair x0203=(2*m,3*n);
pair x0204=(2*m,4*n);
pair x0205=(2*m,5*n);
pair x0206=(2*m,6*n);
pair x0207=(2*m,7*n);
pair x0208=(2*m,8*n);
pair x0209=(2*m,9*n);
pair x0210=(2*m,10*n);
pair x0300=(3*m,0*n);
pair x0301=(3*m,1*n);
pair x0302=(3*m,2*n);
pair x0303=(3*m,3*n);
pair x0304=(3*m,4*n);
pair x0305=(3*m,5*n);
pair x0306=(3*m,6*n);
pair x0307=(3*m,7*n);
pair x0308=(3*m,8*n);
pair x0309=(3*m,9*n);
pair x0310=(3*m,10*n);
pair x0400=(4*m,0*n);
pair x0401=(4*m,1*n);
pair x0402=(4*m,2*n);
pair x0403=(4*m,3*n);
pair x0404=(4*m,4*n);
pair x0405=(4*m,5*n);
pair x0406=(4*m,6*n);
pair x0407=(4*m,7*n);
pair x0408=(4*m,8*n);
pair x0409=(4*m,9*n);
pair x0410=(4*m,10*n);
pair x0500=(5*m,0*n);
pair x0501=(5*m,1*n);
pair x0502=(5*m,2*n);
pair x0503=(5*m,3*n);
pair x0504=(5*m,4*n);
pair x0505=(5*m,5*n);
pair x0506=(5*m,6*n);
pair x0507=(5*m,7*n);
pair x0508=(5*m,8*n);
pair x0509=(5*m,9*n);
pair x0510=(5*m,10*n);
pair x0600=(6*m,0*n);
pair x0601=(6*m,1*n);
pair x0602=(6*m,2*n);
pair x0603=(6*m,3*n);
pair x0604=(6*m,4*n);
pair x0605=(6*m,5*n);
pair x0606=(6*m,6*n);
pair x0607=(6*m,7*n);
pair x0608=(6*m,8*n);
pair x0609=(6*m,9*n);
pair x0610=(6*m,10*n);
pair x0700=(7*m,0*n);
pair x0701=(7*m,1*n);
pair x0702=(7*m,2*n);
pair x0703=(7*m,3*n);
pair x0704=(7*m,4*n);
pair x0705=(7*m,5*n);
pair x0706=(7*m,6*n);
pair x0707=(7*m,7*n);
pair x0708=(7*m,8*n);
pair x0709=(7*m,9*n);
pair x0710=(7*m,10*n);
pair x0800=(8*m,0*n);
pair x0801=(8*m,1*n);
pair x0802=(8*m,2*n);
pair x0803=(8*m,3*n);
pair x0804=(8*m,4*n);
pair x0805=(8*m,5*n);
pair x0806=(8*m,6*n);
pair x0807=(8*m,7*n);
pair x0808=(8*m,8*n);
pair x0809=(8*m,9*n);
pair x0810=(8*m,10*n);
pair x0900=(9*m,0*n);
pair x0901=(9*m,1*n);
pair x0902=(9*m,2*n);
pair x0903=(9*m,3*n);
pair x0904=(9*m,4*n);
pair x0905=(9*m,5*n);
pair x0906=(9*m,6*n);
pair x0907=(9*m,7*n);
pair x0908=(9*m,8*n);
pair x0909=(9*m,9*n);
pair x0910=(9*m,10*n);
pair x1000=(10*m,0*n);
pair x1001=(10*m,1*n);
pair x1002=(10*m,2*n);
pair x1003=(10*m,3*n);
pair x1004=(10*m,4*n);
pair x1005=(10*m,5*n);
pair x1006=(10*m,6*n);
pair x1007=(10*m,7*n);
pair x1008=(10*m,8*n);
pair x1009=(10*m,9*n);
pair x1010=(10*m,10*n);

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


