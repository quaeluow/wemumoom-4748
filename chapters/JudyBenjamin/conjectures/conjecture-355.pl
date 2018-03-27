use Math::BigInt;
sub Factorial
{
    ($choosen)=@_;
    $BIGn=Math::BigInt->new($choosen);
    $BIGnfac=$BIGn->copy();
    $BIGnfac->bfac();
    return "$BIGnfac";
}

sub Choose
{
    ($choosen,$choosek)=@_;
    $BIGn=Math::BigInt->new($choosen);
    $BIGk=Math::BigInt->new($choosek);
    $BIGnoverk=$BIGn->copy();
    $BIGmult=$BIGk->copy();
    $BIGmult->bfac();
    $BIGnoverk->bfac();
    $BIGnminusk=$BIGn->copy();
    $BIGnminusk->bsub($BIGk);
    $BIGnminusk->bfac();
    $BIGmult->bmul($BIGnminusk);
    $BIGnoverk->bdiv($BIGmult);
    return "$BIGnoverk";
}

sub Create1
{
    $n=$t*$s;
    $m=$n/2;
    $T=(1/($t**2));
    $a=1+$T;
    $b=((-2)*$m)*($t+1)*$T;
    $c=2*($m**2)*$T;
    $h=(-$b)/(2*$a);
    $k=($a*($h**2))+($b*$h)+$c;
    $j=($n-1)/2;
    $A=$j+($m*($t**2));
    $B=(2*$j*(1-$m))+(2*$m*($t**2)*(($t-1-$j)/($t)));
    $C=($j*((1-$m)**2))+(($m*($t**2))*((($t-1-$j)**2)/($t**2)));
    $H=((-1)*$B)/(2*$A);
    $K=($A*($H**2))+($B*$H)+$C;
    $sum=(-$K/($m*$j))+((($t**2)*$k)/$m);
    $Fsum=sprintf("%.4f",$sum);
    print output1 "<td align=\"right\"><tt>$Fsum</tt></td>";
}

$tmin=2;
$smin=2;
$tstep=1;
$sstep=1;
$tmax=5;
$smax=1000;
open(output1,">./conjecture-355.htm");
print output1 "<html><head><title>Conjecture 355</title></head><body><table border=5><tr><td><tt></tt></td>";
$tsmax=($tmax-$tmin)/$tstep;
$ssmax=($smax-$smin)/$sstep;
for ($ts1=0;$ts1<=$tsmax;++$ts1)
{
    $t=$tmin+($ts1*$tstep);
    print output1 "<td align=\"right\"><tt><font color=\"green\">t=$t</font></tt></td>";
}
print output1 "</tr>";
for ($ss1=0;$ss1<=$ssmax;++$ss1)
{
    $s=$smin+($ss1*$sstep);
    print output1 "<tr><td align=\"right\"><tt><font color=\"orange\">s=$s</font></tt></td>";
for ($ts1=0;$ts1<=$tsmax;++$ts1)
{
    $t=$tmin+($ts1*$tstep);
    &Create1;
}
print output1 "</tr>";
}
    print output1 "</table></body></html>";
close(output1);

# file:///Volumes/Kodak/stefan-2011/literatur/essays/InformationEpistemology/conjecture-355.htm

# scp becker@67.18.11.31:/home/becker/stefan/InformationEpistemology/conjecture-292-1.htm becker@67.18.11.31:/home/becker/stefan/InformationEpistemology/conjecture-292-2.htm becker@67.18.11.31:/home/becker/stefan/InformationEpistemology/conjecture-292-3.htm ./
