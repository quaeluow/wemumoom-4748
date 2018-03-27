$d=300;

sub threetwo
{
    $usaiquen=@_[0];
    $queeweem=@_[1];
    $iehoimoh=@_[2];

    $oerohqua=1+(($queeweem/($queeweem+$iehoimoh))**2+(($iehoimoh/($queeweem+$iehoimoh))**2));
    $phaefaeg=((1-($queeweem/($queeweem+$iehoimoh)))**2)+(($iehoimoh/($queeweem+$iehoimoh))**2);
    $paekahke=$oerohqua**.5;
    $quoocahn=$phaefaeg**.5;
    $psi=1-(((($oerohqua)+($phaefaeg)-2)/(2*($paekahke)*($quoocahn)))**2);
    $kf2=(($usaiquen-1)**2)+($queeweem**2)+($iehoimoh**2);
    $eiveinge=.5*($phaefaeg)*($psi)*($kf2);
    $ahzohzoh=$kf2-$eiveinge;
    $rohhahpee1=$ahzohzoh**.5;
    $rohhahpee2=$eiveinge**.5;
    @res=($rohhahpee1,$rohhahpee2);
    return @res;
}

sub dkl
{
    $meivaeyo1=@_[0];
    $meivaeyo2=@_[1];
    $meivaeyo3=@_[2];
    $ieciegif1=@_[3];
    $ieciegif2=@_[4];
    $ieciegif3=@_[5];
    $dkl=($meivaeyo1*(log($meivaeyo1/$ieciegif1)))+($meivaeyo2*(log($meivaeyo2/$ieciegif2)))+($meivaeyo3*(log($meivaeyo3/$ieciegif3)));
    return $dkl;
}

sub twothree
{
    $ycaingahm1=@_[0];
    $ycaingahm2=@_[1];
$acaingahma=$ycaingahm1/$sot;
$zcaingahmz=$sot*((($acaingahma**2)-$acaingahma+1)**.5);
$bcaingahmb=$ycaingahm2/$zcaingahmz;
@ttr=((1-$acaingahma)*(1-$bcaingahmb),$acaingahma*(1-$bcaingahmb),$bcaingahmb);
    return @ttr;
}

$gairahyi1=1/3;
$gairahyi2=1/2;
$gairahyi3=1/6;
$shohagha1=1/2;
$shohagha2=5/12;
$shohagha3=1/12;
$dc=dkl($shohagha1,$shohagha2,$shohagha3,$gairahyi1,$gairahyi2,$gairahyi3);

open(dreieck,">./dreieck.asy");

$x=$gairahyi1;
$y=$gairahyi2;
$z=$gairahyi3;

@a=&threetwo($x,$y,$z);
$a1=$a[0];
$a2=$a[1];

# drawing the scaffold
print dreieck "size(400pt,400pt);\n";
print dreieck "real m=1;\n";
print dreieck "real n=1;\n";
print dreieck "real fl=-2;\n";
print dreieck "real fr=16;\n";
print dreieck "real fu=14;\n";
print dreieck "real fd=-2;\n";
print dreieck "path frame=((fl*m,fu*n)--(fr*m,fu*n)--(fr*m,fd*n)--(fl*m,fd*n)--cycle);\n";
print dreieck "draw(frame,linewidth(0));\n";
for ($i1=0;$i1<=25;++$i1)
{
for ($i2=0;$i2<=25;++$i2)
{
    if ($i1<10)
    {
	$f1="0";
    }
    else
    {
	$f1="";
    }
    if ($i2<10)
    {
	$f2="0";
    }
    else
    {
	$f2="";
    }
print dreieck "pair x$f1$i1$f2$i2=($i1*m,$i2*n);\n";
}
}
print dreieck "real sot=2**.5;\n";
print dreieck "real sos=6**.5;\n";
print dreieck "real stt=(3/2)**.5;\n";
print dreieck "real scl=10;\n";
print dreieck "pair X=x0000;\n";
print dreieck "pair Y=x0000+(sot*m*scl,0*m*scl);\n";
print dreieck "pair Z=x0000+((sot/2)*m*scl,stt*m*scl);\n";
print dreieck "pair Xf=X+(0*m*scl,-0.14*m*scl);\n";
print dreieck "pair Yf=Y+(0*m*scl,-0.14*m*scl);\n";
print dreieck "path whitef=(X--Xf--Yf--Y--cycle);\n";
print dreieck "pair Xx=x0000-((1/sot)*m*scl*(1/7),(1/sos)*m*scl*(1/7));\n";
print dreieck "pair Yy=Y+((1/sot)*m*scl*(1/7),(1/sos)*m*scl*(-1/7));\n";
print dreieck "pair Zz=Z+(0*m*scl,((1/sos)*2*(1/7))*m*scl);\n";
print dreieck "pair M=x0000+((sot/2)*m*scl,stt*m*scl*(1/3));\n";
print dreieck "path mx=(X--M);\n";
print dreieck "path my=(Y--M);\n";
print dreieck "path mz=(Z--M);\n";
print dreieck "path mxx=(X--Xx);\n";
print dreieck "path myy=(Y--Yy);\n";
print dreieck "path mzz=(Z--Zz);\n";
print dreieck "path elt=(X--Y--Z--cycle);\n";
print dreieck "pen norlin=linewidth(1);\n";
print dreieck "pen conorl=linewidth(1)+rgb(0,255,0);\n";
print dreieck "fill(whitef,rgb(255,255,255));\n";
print dreieck "draw(elt,norlin);\n";
print dreieck "draw(mx,dashed);\n";
print dreieck "draw(my,dashed);\n";
print dreieck "draw(mz,dashed);\n";
print dreieck "draw(mxx,norlin);\n";
print dreieck "draw(myy,norlin);\n";
print dreieck "draw(mzz,norlin);\n";
print dreieck "label(\"x\",Xx,SE);\n";
print dreieck "label(\"y\",Yy,SW);\n";
print dreieck "label(\"z\",Zz,E);\n";
# print dreieck "dot(\"\$m\$\",M);\n";

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
    $d1=dkl($w1,$w2,$w3,$gairahyi1,$gairahyi2,$gairahyi3);
    $d2=dkl($shohagha1,$shohagha2,$shohagha3,$w1,$w2,$w3);
    $dsum=$d1+$d2;
    if ($dsum<$dc)
    {
	print dreieck "pen conorl=linewidth(.1)+rgb(255,0,0);\n";
    }
    else
    {
	print dreieck "pen conorl=linewidth(.1)+rgb(0,255,0);\n";
    }

    # @cc=threetwo($x1,$x2,$x3);
    @cc=&threetwo($w1,$w2,$w3);
    $c1=$cc[0];
    $c2=$cc[1];
    print dreieck "draw(($c1*m*scl,$c2*n*scl),conorl);\n";
}    
}

print dreieck "pair A=x0000+(0.82496*scl*m,0.20412*scl*m);\n";
print dreieck "pair B=x0000+(0.61872*scl*m,0.15309*scl*m);\n";
print dreieck "pair C=x0000+(0.64818*scl*m,0.10206*scl*m);\n";
# D's values were calculated in s1871.m with a guess for lambda
print dreieck "pair D=x0000+(0.73964*scl*m,0.15052*scl*m);\n";
print dreieck "dot(\"\$A\$\",A);\n";
print dreieck "dot(\"\$B\$\",B,NW);\n";
print dreieck "dot(\"\$C\$\",C,SW);\n";
print dreieck "dot(\"\$E\$\",D,N);\n";
close(dreieck);
