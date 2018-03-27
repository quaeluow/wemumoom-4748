use lib "/home/becker/stefan/myperl/lib/perl5/site_perl/5.8.0/i386-linux-thread-multi";
use Math::Cephes qw(:all);
use Math::BigInt;
$pi=$PI;

sub Create1
{
    $n=$t*$s;
    $sum1=0;
for ($i1=0;$i1<=$s;++$i1)
{
    $ttimess=$t*$s;
    $ttimesi=$t*$i1;
    $tsoveri=Choose($ttimess,$i1);
    $tsoverti=Choose($ttimess,$ttimesi);
    $sum1=$sum1+($tsoveri*$tsoverti);
}
    $y=$sum1;
    $Fy=sprintf("%.0f",$y);
    print output1 "<td align=\"right\"><tt>$Fy</tt></td>";
}

sub Create2
{
    $n=$t*$s;
    $m=$n/2;
    $T=(1/($t**2));
    $a=1+$T;
    $b=((-2)*$m)*($t+1)*$T;
    $c=2*($m**2)*$T;
    $h=(-$b)/(2*$a);
    $k=($a*($h**2))+($b*$h)+$c;
    $y=exp(($n*(log(4)))-(($k*($t**2))/($m)))*(sqrt($T/($pi*$m*$a)))*.5*(1+(erf(($s+.5-$h)/(sqrt($m/($a*($t**2)))))));
    $Fy=sprintf("%.1f",$y);
    print output2 "<td align=\"right\"><tt>$Fy</tt></td>"; 
}

sub Create3
{
    $n=$t*$s;
    $sum1=0;
for ($i1=0;$i1<=$s;++$i1)
{
    $ttimess=$t*$s;
    $ttimesi=$t*$i1;
    $tsoveri=Choose($ttimess,$i1);
    $tsoverti=Choose($ttimess,$ttimesi);
    $sum1=$sum1+($tsoveri*$tsoverti);
}
    $u=$sum1;
    $m=$n/2;
    $T=(1/($t**2));
    $a=1+$T;
    $b=((-2)*$m)*($t+1)*$T;
    $c=2*($m**2)*$T;
    $h=(-$b)/(2*$a);
    $k=($a*($h**2))+($b*$h)+$c;
    $v=exp(($n*(log(4)))-(($k*($t**2))/($m)))*(sqrt($T/($pi*$m*$a)))*.5*(1+(erf(($s+.5-$h)/(sqrt($m/($a*($t**2)))))));
if ($v==0)
{
    $y=99;
}
else
{
    $y=$u/$v;
}
    $Fy=sprintf("%.2f",$y);
if (($y>.9)&&($y<1.1))
{
    $scolour="blue";
}
else
{
    $scolour="red";
}
    print output3 "<td align=\"right\"><tt><font color=$scolour>$Fy</font></tt></td>"; 
}

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
$tmax=12;
$smax=12;
open(output1,">./conjecture-321-1.htm");
open(output2,">./conjecture-321-2.htm");
open(output3,">./conjecture-321-3.htm");
print output1 "<html><head><title>Conjecture 321</title></head><body><table border=5><tr><td><tt></tt></td>";
print output2 "<html><head><title>Conjecture 321</title></head><body><table border=5><tr><td><tt></tt></td>";
print output3 "<html><head><title>Conjecture 321</title></head><body><table border=5><tr><td><tt></tt></td>";
$tsmax=($tmax-$tmin)/$tstep;
$ssmax=($smax-$smin)/$sstep;
for ($ts1=0;$ts1<=$tsmax;++$ts1)
{
    $t=$tmin+($ts1*$tstep);
    print output1 "<td align=\"right\"><tt><font color=\"red\">t=$t</font></tt></td>";
    print output2 "<td align=\"right\"><tt><font color=\"red\">t=$t</font></tt></td>";
    print output3 "<td align=\"right\"><tt><font color=\"red\">t=$t</font></tt></td>";
}
print output1 "</tr>";
print output2 "</tr>";
print output3 "</tr>";
for ($ss1=0;$ss1<=$ssmax;++$ss1)
{
    $s=$smin+($ss1*$sstep);
    print output1 "<tr><td align=\"right\"><tt><font color=\"blue\">s=$s</font></tt></td>";
    print output2 "<tr><td align=\"right\"><tt><font color=\"blue\">s=$s</font></tt></td>";
    print output3 "<tr><td align=\"right\"><tt><font color=\"blue\">s=$s</font></tt></td>";
for ($ts1=0;$ts1<=$tsmax;++$ts1)
{
    $t=$tmin+($ts1*$tstep);
    &Create1;
    &Create2;
    &Create3;
}
print output1 "</tr>";
print output2 "</tr>";
print output3 "</tr>";
}
    print output1 "</table></body></html>";
    print output2 "</table></body></html>";
    print output3 "</table></body></html>";
close(output3);
close(output2);
close(output1);

# file:///Volumes/Kodak/stefan-2011/literatur/essays/InformationEpistemology/conjecture-321-1.htm

# scp becker@67.18.11.31:/home/becker/stefan/InformationEpistemology/conjecture-292-1.htm becker@67.18.11.31:/home/becker/stefan/InformationEpistemology/conjecture-292-2.htm becker@67.18.11.31:/home/becker/stefan/InformationEpistemology/conjecture-292-3.htm ./
