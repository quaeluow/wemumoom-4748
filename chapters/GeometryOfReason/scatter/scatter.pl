use Statistics::R;
my $R = Statistics::R->new();
 
$n=6;
$grain=75;

sub threetwo
{
    $a=@_[0];
    $b=@_[1];
    $c=@_[2];

    $u2=1+(($b/($b+$c))**2+(($c/($b+$c))**2));
    $v2=((1-($b/($b+$c)))**2)+(($c/($b+$c))**2);
    $u=$u2**.5;
    $v=$v2**.5;
    $psi=1-(((($u2)+($v2)-2)/(2*($u)*($v)))**2);
    $k2=(($a-1)**2)+($b**2)+($c**2);
    $m2=.5*($v2)*($psi)*($k2);
    $l2=$k2-$m2;
    $r1=$l2**.5;
    $r2=$m2**.5;
    @res=($r1,$r2);
}

sub dkl
{
    $a1=@_[0];
    $a2=@_[1];
    $a3=@_[2];
    $b1=@_[3];
    $b2=@_[4];
    $b3=@_[5];
    $dkl=$a1*(log($a1/$b1))+$a2*(log($a2/$b2))+$a3*(log($a3/$b3));
}

srand;
open(scatter,">./scatter.htm");
$p1[0]=1/3;
$p2[0]=1/3;
$p3[0]=1/3;
$p1[1]=2/5;
$p2[1]=2/5;
$p3[1]=1/5;
for ($i1=2;$i1<$n;++$i1)
{
    $r1=rand;
    $r2=rand;
    if ($r1>$r2)
    {
	$s1=$r1;
	$s2=$r2;
    }
    else
    {
	$s1=$r2;
	$s2=$r1;
    }
    $p1[$i1]=1-$s1;
    $p2[$i1]=$s1-$s2;
    $p3[$i1]=$s2;
}

open(sixpoint,">./sixpoint.asy");

# drawing the scaffold
print sixpoint "size(400pt,400pt);\n";
print sixpoint "real m=1;\n";
print sixpoint "real fl=-2;\n";
print sixpoint "real fr=16;\n";
print sixpoint "real fu=14;\n";
print sixpoint "real fd=-2;\n";
print sixpoint "path frame=((fl*m,fu*m)--(fr*m,fu*m)--(fr*m,fd*m)--(fl*m,fd*m)--cycle);\n";
print sixpoint "draw(frame,linewidth(0));\n";
print sixpoint "pair x0000=(0*m,0*m);\n";
print sixpoint "real sot=2**.5;\n";
print sixpoint "real sos=6**.5;\n";
print sixpoint "real stt=(3/2)**.5;\n";
print sixpoint "real scl=10;\n";
print sixpoint "pair X=x0000;\n";
print sixpoint "pair Y=x0000+(sot*m*scl,0*m*scl);\n";
print sixpoint "pair Z=x0000+((sot/2)*m*scl,stt*m*scl);\n";
print sixpoint "pair Xx=x0000-((1/sot)*m*scl*(1/7),(1/sos)*m*scl*(1/7));\n";
print sixpoint "pair Yy=Y+((1/sot)*m*scl*(1/7),(1/sos)*m*scl*(-1/7));\n";
print sixpoint "pair Zz=Z+(0*m*scl,((1/sos)*2*(1/7))*m*scl);\n";
print sixpoint "pair M=x0000+((sot/2)*m*scl,stt*m*scl*(1/3));\n";
print sixpoint "path mx=(X--M);\n";
print sixpoint "path my=(Y--M);\n";
print sixpoint "path mz=(Z--M);\n";
print sixpoint "path mxx=(X--Xx);\n";
print sixpoint "path myy=(Y--Yy);\n";
print sixpoint "path mzz=(Z--Zz);\n";
print sixpoint "path elt=(X--Y--Z--cycle);\n";
print sixpoint "pen norlin=linewidth(1);\n";
print sixpoint "pen dotred=linewidth(.5)+red;\n";
print sixpoint "pen dotblu=linewidth(.5)+blue;\n";
print sixpoint "pen dotylo=linewidth(.5)+yellow;\n";
print sixpoint "pen dotlin=linewidth(2);\n";
print sixpoint "draw(elt,norlin);\n";
print sixpoint "draw(mx,dashed);\n";
print sixpoint "draw(my,dashed);\n";
print sixpoint "draw(mz,dashed);\n";
print sixpoint "draw(mxx,norlin);\n";
print sixpoint "draw(myy,norlin);\n";
print sixpoint "draw(mzz,norlin);\n";
print sixpoint "label(\"x\",Xx,SE);\n";
print sixpoint "label(\"y\",Yy,SW);\n";
print sixpoint "label(\"z\",Zz,E);\n";
for ($i2=0;$i2<$n;++$i2)
{
@a=&threetwo($p1[$i2],$p2[$i2],$p3[$i2]);
$a1=$a[0];
$a2=$a[1];
print sixpoint "pair A$i2=x0000+($a1*m*scl,$a2*m*scl);\n";
print sixpoint "dot(A$i2,dotlin);\n";
print sixpoint "label(\"A$i2\",A$i2,E);\n";
}

close(sixpoint);
system "asy sixpoint.asy";
# system "epstopdf sixpoint.eps";
system "convert sixpoint.eps sixpoint.png";

print scatter "<html><head><title>Kullback-Leibler Asymmetry</title><body bgcolor=\"ffffff\" text=\"000000\"></head><body><tt>Illustrating the non-trivial asymmetries for the Kullback-Leibler divergence.<p>Number of data points in S3: $n.<p>";

# See <a href=\"./sixpoint.pdf\">sixpoint.pdf</a> to see where they are (using asymptote).<p>";

print scatter "<img style=\"border:1px solid #000000\" src=\"./sixpoint.png\"><p>";

    open(euclidean,">./euclidean.R");
    $d=0;
for ($j4=1;$j4<$grain;++$j4)
{
for ($j5=1;$j5<$grain;++$j5)
{
    $x=$j4/$grain;
    $y=$j5/$grain;
    $s=$x+$y;
    if ($s<1)
    {
	$xx[$d]=$x;
	$yy[$d]=$y;
	$d=$d+1;
    }
}
}

print euclidean "library(scatterplot3d)\n";
print euclidean "x <- c(";
for ($j6=0;$j6<$d;++$j6)
{
    print euclidean "$xx[$j6]";
    if ($j6<$#xx)
    {
    print euclidean ",";
    }
}
print euclidean ")\n";

print euclidean "y <- c(";
for ($j7=0;$j7<$d;++$j7)
{
    print euclidean "$yy[$j7]";
    if ($j7<$#yy)
    {
    print euclidean ",";
    }
}
print euclidean ")\n";

print euclidean "z <- c(";
for ($j8=0;$j8<$d;++$j8)
{
    print euclidean "0";
    if ($j8<$#xx)
    {
    print euclidean ",";
    }
}
print euclidean ")\n";

print euclidean "postscript(\"euclidean.ps\")\n";
print euclidean "scatterplot3d(x,y,z,highlight.3d=TRUE,pch=20,xlab=\"\",ylab=\"\",zlab=\"\",angle=45,zlim=c(-1,1))\n";
close(euclidean);
$t2=$R->run_from_file("euclidean.R");
$R->stop();
system "convert euclidean.ps -rotate 90 euclidean.png";
print scatter "Geometry of Reason<p>";
print scatter "<img style=\"border:1px solid #000000\" src=\"./euclidean.png\"><p></body></html>";

for ($i3=0;$i3<$n;++$i3)
{
    open(frbnfrh,">./frbnfrh$i3.R");
    $c=0;
for ($i4=1;$i4<$grain;++$i4)
{
for ($i5=1;$i5<$grain;++$i5)
{
    $x=$i4/$grain;
    $y=$i5/$grain;
    $s=$x+$y;
    if ($s<1)
    {
	$xx[$c]=$x;
	$yy[$c]=$y;
	$c=$c+1;
    }
}
}

print frbnfrh "library(scatterplot3d)\n";
print frbnfrh "x <- c(";
for ($i6=0;$i6<$c;++$i6)
{
    print frbnfrh "$xx[$i6]";
    if ($i6<$#xx)
    {
    print frbnfrh ",";
    }
}
print frbnfrh ")\n";

print frbnfrh "y <- c(";
for ($i7=0;$i7<$c;++$i7)
{
    print frbnfrh "$yy[$i7]";
    if ($i7<$#yy)
    {
    print frbnfrh ",";
    }
}
print frbnfrh ")\n";

print frbnfrh "z <- c(";
for ($i8=0;$i8<$c;++$i8)
{
# Kullback-Leibler divergence between p1[$i3],p2[$i3],p3[$i3] and x,y,1-x-y
    # $kull=($xx[$i8])**2+($xx[$i8])**2;
    $ztemp=1-$xx[$i8]-$yy[$i8];
    $kull=dkl($xx[$i8],$yy[$i8],$ztemp,$p1[$i3],$p2[$i3],$p3[$i3])-dkl($p1[$i3],$p2[$i3],$p3[$i3],$xx[$i8],$yy[$i8],$ztemp);
    print frbnfrh "$kull";
    if ($i8<$#xx)
    {
    print frbnfrh ",";
    }
}
print frbnfrh ")\n";

print frbnfrh "postscript(\"frbnfrh$i3.ps\")\n";
print frbnfrh "scatterplot3d(x,y,z,highlight.3d=TRUE,pch=20,xlab=\"\",ylab=\"\",zlab=\"\",angle=45,zlim=c(-1,1))\n";
close(frbnfrh);
$t2=$R->run_from_file("frbnfrh$i3.R");
$R->stop();
system "convert frbnfrh$i3.ps -rotate 90 frbnfrh$i3.png";
print scatter "($p1[$i3],$p2[$i3],$p3[$i3])<p>";
print scatter "<img style=\"border:1px solid #000000\" src=\"./frbnfrh$i3.png\"><p></body></html>";
}

close(scatter);
print "Output is in scatter.htm.\n";
