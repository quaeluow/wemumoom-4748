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
$tmax=20;
$smax=20;
open(output,">./conjecture-265.htm");
print output "<html><head><title>Where does alpha(s) go</title></head><body><table border=5><tr><td><tt></tt></td>";
$tsmax=($tmax-$tmin)/$tstep;
$ssmax=($smax-$smin)/$sstep;
for ($ts1=0;$ts1<=$tsmax;++$ts1)
{
    $t=$tmin+($ts1*$tstep);
    print output "<td><font color=\"red\"><tt>$t</font></tt></td>";
}
print output "</tr>";
for ($ss1=0;$ss1<=$ssmax;++$ss1)
{
    $s=$smin+($ss1*$sstep);
    print output "<tr><td><font color=\"blue\"><tt>$s</font></tt></td>";
for ($ts1=0;$ts1<=$tsmax;++$ts1)
{
    $t=$tmin+($ts1*$tstep);
    $v=Choose($t,$s);

    $w2=(sqrt(2)/sqrt($t))*($s+.5-($t/2));
    $w1=(sqrt(2)/sqrt($t))*($s-.5-($t/2));
    $u=(2**($t-1))*(erf($w2)-erf($w1));
if (($u==0)||($v==0))
{
    $y=0;
}
else
{
    $y=$v/$u;
}

    $Fy=sprintf("%.3f",$y);
    print output "<td><tt>$Fy</tt></td>";
}
print output "</tr>";
}
    print output "</table></body></html>";
close(output);
