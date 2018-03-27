$d=100;

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

open(ptote,">./twodimdkl.asy");

# drawing the scaffold
print ptote "size(400pt,400pt);\n";
print ptote "real m=16;\n";
print ptote "real fl=-2;\n";
print ptote "real fr=16;\n";
print ptote "real fu=16;\n";
print ptote "real fd=-2;\n";
print ptote "path frame=((fl*m,fu*m)--(fr*m,fu*m)--(fr*m,fd*m)--(fl*m,fd*m)--cycle);\n";
print ptote "path frame=((fl,fu)--(fr,fu)--(fr,fd)--(fl,fd)--cycle);\n";
print ptote "draw(frame,linewidth(0));\n";
print ptote "pair x0000=(0*m,0*m);\n";
print ptote "pair x0100=(1*m,0*m);\n";
print ptote "pair x0001=(0*m,1*m);\n";
print ptote "pair x0101=(1*m,1*m);\n";
# print ptote "real sot=2**.5;\n";
print ptote "path mx=(x0000--x0100);\n";
print ptote "path my=(x0000--x0001);\n";
print ptote "pen norlin=linewidth(1);\n";
print ptote "pen redlin=linewidth(1)+rgb(0,0,255);\n";
print ptote "pen blulin=linewidth(1)+rgb(0,255,0);\n";
print ptote "draw(mx,norlin);\n";
print ptote "draw(my,norlin);\n";
# print ptote "label(\"x\",Xx,SE);\n";
# print ptote "dot(A,dotlin);\n";

# creating the net
$ll=$d-1;
for ($i2=1;$i2<$d;++$i2)
{
for ($i3=1;$i3<$d;++$i3)
{
    $w1=$i2/$d;
    $w2=$i3/$d;
    # print "$w1;$w2\n";
    $delta=($w1*log($w1/$w2))+((1-$w1)*log((1-$w1)/(1-$w2)))-($w2*log($w2/$w1))+(($w2-1)*log((1-$w2)/(1-$w1)));
    print ptote "pair W=($w1*m,$w2*m);\n";
if ($delta>0)
{
	print ptote "dot(W,redlin);\n";
}
else
{
	print ptote "dot(W,blulin);\n";
}
}
}

close(ptote);
system "asy twodimdkl.asy";
# system "epstopdf twodimdkl.eps";
system "convert twodimdkl.eps -verbose twodimdkl.png";
