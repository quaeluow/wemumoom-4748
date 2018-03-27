use lib "/home/becker/stefan/myperl/lib/perl5/site_perl/5.8.0/i386-linux-thread-multi";
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

$tmin=1;
$smin=1;
$tstep=1;
$sstep=1;
$tmax=10;
$smax=10;
open(output,">./testdenominator-2.htm");
print output "<html><head><title>Test Denominator Approximation</title></head><body><table border=5><tr><td><tt></tt></td>";
$tsmax=($tmax-$tmin)/$tstep;
$ssmax=($smax-$smin)/$sstep;
for ($ts1=0;$ts1<=$tsmax;++$ts1)
{
    $t=$tmin+($ts1*$tstep);
    print output "<td align=\"right\"><tt><font color=\"red\">$t</font></tt></td>";
}
print output "</tr>";
for ($ss1=0;$ss1<=$ssmax;++$ss1)
{
    $s=$smin+($ss1*$sstep);
    print output "<tr><td align=\"right\"><tt><font color=\"green\">$s</font></tt></td>";
for ($ts1=0;$ts1<=$tsmax;++$ts1)
{
    $t=$tmin+($ts1*$tstep);
    $n=$t*$s;
    $alph=($n/(2*(1+($t**2))))**.5;
    $beta=(-2)*($t+1);
    $h=(-1)*$beta*($alph**2);
    $k=(($h**2)/(2*($alph**2)))+($beta*$h)+$n;
    $d=(2*($alph**2))**.5;
    $w1=($s+.5-$h)/$d;
    # print "$s $t $a $k $n\n";
    # $y=(2**(2*$n))*(1/(exp($k)*sqrt($pi)*$n*sqrt($a)))*(erf($w1)+1);
    $fixer=1;
    $y=$fixer*(((($pi**.5)*$n*exp($k))**(-1))*(2**$n)*$d*(1+erf($w1)));
    $Fy=sprintf("%.1f",$y);
    print output "<td align=\"right\"><tt>$Fy</tt></td>";
}
print output "</tr>";
}
    print output "</table></body></html>";
close(output);
