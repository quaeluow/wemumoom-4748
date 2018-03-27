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

sub CreateOne
{
if (! $t<$s)
{
    $y=Choose($t,$s);
    $Fy=sprintf("%.0f",$y);
    print output "<td align=\"right\"><tt>$Fy</tt></td>";
}
else
{
    $y=0;
    $Fy=sprintf("%.0f",$y);
    print output "<td align=\"right\"><tt>$Fy</tt></td>";
}
}

sub CreateTwo
{
if ($t<$s)
{
    $y=0;
    $Fy=sprintf("%.0f",$y);
    print output "<td align=\"right\"><tt>$Fy</tt></td>";
}
else
{
    $m=$t/2;
    $t1=($s-$m)**2;
    $y=(2**$t)*(1/sqrt($pi*$m))*(exp((-1)*($t1/$m)));
    print "t=$t s=$s y=$y (s-m)^2=$t1\n";
    $Fy=sprintf("%.1f",$y);
    print output "<td align=\"right\"><tt>$Fy</tt></td>";
}
}

sub CreateThree
{
if ($t<$s)
{
    $y=0;
    $Fy=sprintf("%.0f",$y);
    print output "<td align=\"right\"><tt>$Fy</tt></td>";
}
else
{
    $u=Choose($t,$s);
    $Fu=sprintf("%.0f",$u);
    $m=$t/2;
    $t1=($s-$m)**2;
    $v=(2**$t)*(1/sqrt($pi*$m))*(exp((-1)*($t1/$m)));
    $y=$u/$v;
    $Fy=sprintf("%.3f",$y);
    print output "<td align=\"right\"><tt>$Fy</tt></td>";

}
}

$tmin=1;
$smin=1;
$tstep=1;
$sstep=1;
$tmax=25;
$smax=25;
open(output,">./conjecture-290-3.htm");
print output "<html><head><title>Conjecture 290</title></head><body><table border=5><tr><td><tt></tt></td>";
$tsmax=($tmax-$tmin)/$tstep;
$ssmax=($smax-$smin)/$sstep;
for ($ts1=0;$ts1<=$tsmax;++$ts1)
{
    $t=$tmin+($ts1*$tstep);
    print output "<td align=\"right\"><tt><font color=\"red\">t=$t</font></tt></td>";
}
print output "</tr>";
for ($ss1=0;$ss1<=$ssmax;++$ss1)
{
    $s=$smin+($ss1*$sstep);
    print output "<tr><td align=\"right\"><tt><font color=\"green\">s=$s</font></tt></td>";
for ($ts1=0;$ts1<=$tsmax;++$ts1)
{
    $t=$tmin+($ts1*$tstep);
    $n=$t*$s;

    # &CreateOne;
    &CreateThree;
}
print output "</tr>";
}
    print output "</table></body></html>";
close(output);

# file:///Volumes/Kodak/stefan-2011/literatur/essays/InformationEpistemology/conjecture-292-1.htm
