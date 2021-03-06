# 0.333333;0.333333;0.333333
# 0.5;0.3;0.2
# 0.333333;0.5;0.1666667

$d=300;

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

open(asym,"<./asym.data");
@asym=<asym>;
close(asym);
foreach $asym (@asym)
{
    chomp($asym);
}
for ($i1=0;$i1<=$#asym;++$i1)
{
open(ptote,">./asym$i1.asy");
open(dkls,">./dkls$i1.data");

@t1=split(";",$asym[$i1]);
$x=$t1[0];
$y=$t1[1];
$z=$t1[2];

@a=&threetwo($x,$y,$z);
$a1=$a[0];
$a2=$a[1];

# drawing the scaffold
print ptote "size(400pt,400pt);\n";
print ptote "real m=1;\n";
print ptote "real fl=-2;\n";
print ptote "real fr=16;\n";
print ptote "real fu=14;\n";
print ptote "real fd=-2;\n";
print ptote "path frame=((fl*m,fu*m)--(fr*m,fu*m)--(fr*m,fd*m)--(fl*m,fd*m)--cycle);\n";
print ptote "draw(frame,linewidth(0));\n";
print ptote "pair x0000=(0*m,0*m);\n";
print ptote "real sot=2**.5;\n";
print ptote "real sos=6**.5;\n";
print ptote "real stt=(3/2)**.5;\n";
print ptote "real scl=10;\n";
print ptote "pair X=x0000;\n";
print ptote "pair Y=x0000+(sot*m*scl,0*m*scl);\n";
print ptote "pair Z=x0000+((sot/2)*m*scl,stt*m*scl);\n";
print ptote "pair Xx=x0000-((1/sot)*m*scl*(1/7),(1/sos)*m*scl*(1/7));\n";
print ptote "pair Yy=Y+((1/sot)*m*scl*(1/7),(1/sos)*m*scl*(-1/7));\n";
print ptote "pair Zz=Z+(0*m*scl,((1/sos)*2*(1/7))*m*scl);\n";
print ptote "pair M=x0000+((sot/2)*m*scl,stt*m*scl*(1/3));\n";
print ptote "path mx=(X--M);\n";
print ptote "path my=(Y--M);\n";
print ptote "path mz=(Z--M);\n";
print ptote "path mxx=(X--Xx);\n";
print ptote "path myy=(Y--Yy);\n";
print ptote "path mzz=(Z--Zz);\n";
print ptote "path elt=(X--Y--Z--cycle);\n";
print ptote "pen norlin=linewidth(1);\n";
print ptote "pen dotred=linewidth(.5)+red;\n";
print ptote "pen dotblu=linewidth(.5)+blue;\n";
print ptote "pen dotylo=linewidth(.5)+yellow;\n";
print ptote "pen dotlin=linewidth(2);\n";
print ptote "draw(elt,norlin);\n";
print ptote "draw(mx,dashed);\n";
print ptote "draw(my,dashed);\n";
print ptote "draw(mz,dashed);\n";
print ptote "draw(mxx,norlin);\n";
print ptote "draw(myy,norlin);\n";
print ptote "draw(mzz,norlin);\n";
print ptote "label(\"x\",Xx,SE);\n";
print ptote "label(\"y\",Yy,SW);\n";
print ptote "label(\"z\",Zz,E);\n";
print ptote "pair A=x0000+($a1*m*scl,$a2*m*scl);\n";
print ptote "dot(A,dotlin);\n";

# creating the net
$ll=$d-1;
for ($i2=1;$i2<$ll;++$i2)
{
    $w1=$i2/$d;
    $kk=$d-$i2;
for ($i3=1;$i3<$kk;++$i3)
{
    $w2=$i3/$d;
    $w3=1-$w2-$w1;
    # print "$w1 $w2 $w3\n";
    @w=&threetwo($w1,$w2,$w3);
    $ww1=$w[0];
    $ww2=$w[1];
    print ptote "pair W=x0000+($ww1*m*scl,$ww2*m*scl);\n";
    $kl1=dkl($x,$y,$z,$w1,$w2,$w3);
    $kl2=dkl($w1,$w2,$w3,$x,$y,$z);
    # print dkls "$kl1 : $kl2\n";
    if ($kl1<$kl2)
    {
	print ptote "dot(W,dotred);\n";
    }
    elsif ($kl1==$kl2)
    {
	print ptote "dot(W,dotylo);\n";
    }
    else
    {
	print ptote "dot(W,dotblu);\n";
    }
}    
}

close(dkls);
close(ptote);
system "asy asym$i1.asy";
system "epstopdf asym$i1.eps";
system "convert asym$i1.eps -verbose asym$i1.png";
}
