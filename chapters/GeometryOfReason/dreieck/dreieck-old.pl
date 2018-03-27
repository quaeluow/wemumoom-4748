# I put the perl file that just draws the basic simplex in template-simplex.pl

$s1=98;
$s2=98;
$s3=98;

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
    $kf2=(($paekahkesaiquen-1)**2)+($queeweem**2)+($iehoimoh**2);
    $eiveinge=.5*($phaefaeg)*($psi)*($kf2);
    $ahzohzoh=$kf2-$eiveinge;
    $rohhahpee1=$ahzohzoh**.5;
    $rohhahpee2=$eiveinge**.5;
    @res=($rohhahpee1,$rohhahpee2);
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
}

$its=15;
$nod=15;
$dd=.03;
$sot=2**(.5);

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

open(dreieck,">./dreieck.asy");

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

$S1=$s1+2;
$S2=$s2+2;
$S3=$s3+2;
$m1=1/3;
$m2=1/3;
$m3=1/3;
$gairahyi1=1/3;
$gairahyi2=1/2;
$gairahyi3=1/6;
$shohagha1=1/2;
$shohagha2=5/12;
$shohagha3=1/12;
$dc=dkl($shohagha1,$shohagha2,$shohagha3,$gairahyi1,$gairahyi2,$gairahyi3);
for ($k1=0;$k1<=2;++$k1)
{
for ($k2=0;$k2<=$s2;++$k2)
{
    if ($k1==0)
    {
	$z1=0;
        $z2=($k2+1)/$S2;
        $z3=1-$z2;
    }
    elsif ($k1==1)
    {
	$z1=($k2+1)/$S2;
        $z2=0;
        $z3=1-$z1;
    }
    else
    {
	$z1=($k2+1)/$S2;
        $z2=1-$z1;
        $z3=0;
    }
for ($w1=0;$w1<=$s3;++$w1)
{
    $mm=($w1+1)/$S3;
    $x1=$m1+(.5*$mm*($z1-$m1));
    $x2=$m2+(.5*$mm*($z2-$m2));
    $x3=$m3+(.5*$mm*($z3-$m3));
    $y1=$m1+($mm*($z1-$m1));
    $y2=$m2+($mm*($z2-$m2));
    $y3=$m3+($mm*($z3-$m3));
    # print "$y1 $y2 $y3\n";
    $d1=dkl($x1,$x2,$x3,$gairahyi1,$gairahyi2,$gairahyi3);
    $d2=dkl($shohagha1,$shohagha2,$shohagha3,$x1,$x2,$x3);
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
    @cc=threetwo($y1,$y2,$y3);
    $c1=$cc[0];
    $c2=$cc[1];
    print dreieck "draw(($c1*m*scl,$c2*n*scl),conorl);\n";
    # z_i cannot be 1/3 or else log of 0 1,116.27
}    
}
}
print dreieck "pair A=x0000+(0.82496*scl*m,0.20412*scl*m);\n";
print dreieck "pair B=x0000+(0.61872*scl*m,0.15309*scl*m);\n";
print dreieck "pair C=x0000+(0.64818*scl*m,0.10206*scl*m);\n";
print dreieck "dot(\"\$A\$\",A);\n";
print dreieck "dot(\"\$B\$\",B,NW);\n";
print dreieck "dot(\"\$C\$\",C,SW);\n";

close(dreieck);

$tx1=1/3;
$tx2=1/2;
$tx3=1/6;
$ty1=1/2;
$ty2=3/8;
$ty3=1/8;
$tz1=1/2;
$tz2=5/12;
$tz3=1/12;
$test1=dkl($ty1,$ty2,$ty3,$tx1,$tx2,$tx3);
$test2=dkl($tz1,$tz2,$tz3,$ty1,$ty2,$ty3);
$test3=dkl($tz1,$tz2,$tz3,$tx1,$tx2,$tx3);
$tdnot=$test1+$test2;
print "dsum $test3\n";
print "dnot $tdnot\n";
