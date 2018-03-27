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
    $sum1=$sum1+($i1*$tsoveri*$tsoverti);
}
    $y=$sum1;
    $Fy=sprintf("%.0f",$y);
    print output1 "<td align=\"right\"><tt>$Fy</tt></td>";
}

sub Create2
{
    $n=$t*$s;
    $m=$n/2;
    $j=($n-1)/2;
    $A=($m/($t**2))+$j;
    $B=(-2)*((($m*$j)/($t**2))-($j*(($m/$t)-1)));
    $C=(($m*($j**2))/($t**2))+((($m/$t)-1)**2);
    $H=((-1)*$B)/(2*$A);
    $K=($A*($H**2))+($B*$H)+$C;
    print "n=$n t=$t s=$s j=$j, A=$A, B=$B, C=$C, H=$H, K=$K\n";
    $y=($s/(2*(sqrt($pi*$A))))*(exp((((2*$n)-1)*(log(2)))-($K*(($t**2)/($m*$j)))))*(1+(erf(((sqrt($A))*$t*($s-0.5-$H))/(sqrt($m*$j)))));
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
    $sum1=$sum1+($i1*$tsoveri*$tsoverti);
}
    $u=$sum1;
    $m=$n/2;
    $j=($n-1)/2;
    $A=($m/($t**2))+$j;
    $B=(-2)*((($m*$j)/($t**2))-($j*(($m/$t)-1)));
    $C=(($m*($j**2))/($t**2))+((($m/$t)-1)**2);
    $H=((-1)*$B)/(2*$A);
    $K=($A*($H**2))+($B*$H)+$C;
    $v=($s/(2*(sqrt($pi*$A))))*(exp((((2*$n)-1)*(log(2)))-($K*(($t**2)/($m*$j)))))*(1+(erf(((sqrt($A))*$t*($s-0.5-$H))/(sqrt($m*$j)))));
if ($v==0)
{
    $y=99;
}
else
{
    $y=$v/$u;
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

$tmin=2;
$smin=2;
$tstep=1;
$sstep=1;
$tmax=12;
$smax=12;
open(output1,">./conjecture-327-1.htm");
open(output2,">./conjecture-327-2.htm");
open(output3,">./conjecture-327-3.htm");
print output1 "<html><head><title>Conjecture 327</title></head><body><table border=5><tr><td><tt></tt></td>";
print output2 "<html><head><title>Conjecture 327</title></head><body><table border=5><tr><td><tt></tt></td>";
print output3 "<html><head><title>Conjecture 327</title></head><body><table border=5><tr><td><tt></tt></td>";
$tsmax=($tmax-$tmin)/$tstep;
$ssmax=($smax-$smin)/$sstep;
for ($ts1=0;$ts1<=$tsmax;++$ts1)
{
    $t=$tmin+($ts1*$tstep);
    print output1 "<td align=\"right\"><tt><font color=\"green\">t=$t</font></tt></td>";
    print output2 "<td align=\"right\"><tt><font color=\"green\">t=$t</font></tt></td>";
    print output3 "<td align=\"right\"><tt><font color=\"green\">t=$t</font></tt></td>";
}
print output1 "</tr>";
print output2 "</tr>";
print output3 "</tr>";
for ($ss1=0;$ss1<=$ssmax;++$ss1)
{
    $s=$smin+($ss1*$sstep);
    print output1 "<tr><td align=\"right\"><tt><font color=\"orange\">s=$s</font></tt></td>";
    print output2 "<tr><td align=\"right\"><tt><font color=\"orange\">s=$s</font></tt></td>";
    print output3 "<tr><td align=\"right\"><tt><font color=\"orangee\">s=$s</font></tt></td>";
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

# file:///Volumes/Kodak/stefan-2011/literatur/essays/InformationEpistemology/conjecture-327-1.htm

# scp becker@67.18.11.31:/home/becker/stefan/InformationEpistemology/conjecture-292-1.htm becker@67.18.11.31:/home/becker/stefan/InformationEpistemology/conjecture-292-2.htm becker@67.18.11.31:/home/becker/stefan/InformationEpistemology/conjecture-292-3.htm ./
