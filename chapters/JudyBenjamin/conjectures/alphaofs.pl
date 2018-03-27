use Math::Cephes qw(:all);
$pi=$PI;

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

$tmin=3;
$smin=2;
$tstep=1;
$sstep=1;
$tmax=3;
$smax=211;
print "If my calculations are correct then\n";
print "EX1\\approx\\alpha(s)=n\\frac{erf(w1)+1}{erf(w2)+1}\n";
print "The question is: where does \\alpha(s) go as s goes to \\infty\n";
open(output,">./alphaofs.htm");
print output "<html><head><title>Where does alpha(s) go</title></head><body><table border=5><tr><td><tt></tt></td>";
$tsmax=($tmax-$tmin)/$tstep;
$ssmax=($smax-$smin)/$sstep;
for ($ts1=0;$ts1<=$tsmax;++$ts1)
{
    $t=$tmin+($ts1*$tstep);
    print output "<td><tt>$t</tt></td>";
}
print output "</tr>";
for ($ss1=0;$ss1<=$ssmax;++$ss1)
{
    $s=$smin+($ss1*$sstep);
    print output "<tr><td><tt>$s</tt></td>";
for ($ts1=0;$ts1<=$tsmax;++$ts1)
{
    $t=$tmin+($ts1*$tstep);
    $n=$s*$t;
    $w1=sqrt(2/($n-1))*($s-($n/2));
    $w2=sqrt(2/$n)*($s-(($n-1)/2));
    $erfw1=erf($w1);
    $erfw2=erf($w2);
    $y=(($erfw1+1)/($erfw2+1));
    $Fy=sprintf("%.4f",$y);
    print "$s $Fy\n";
    print output "<td><tt>$Fy</tt></td>";
}
print output "</tr>";
}
    print output "</table></body></html>";
close(output);
