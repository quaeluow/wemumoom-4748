open(voronoi,">./voronoi.asy");
size(400pt,400pt);
real m=1;

real fl=-2;
real fr=16;
real fu=14;
real fd=-2;
path frame=((fl*m,fu*m)--(fr*m,fu*m)--(fr*m,fd*m)--(fl*m,fd*m)--cycle);
draw(frame,linewidth(0));
















close(voronoi);
