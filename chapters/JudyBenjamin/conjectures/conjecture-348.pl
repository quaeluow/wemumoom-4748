use lib "/home/becker/stefan/myperl/lib/perl5/site_perl/5.8.0/i386-linux-thread-multi";
use Math::Cephes qw(:all);
use Math::BigInt;
$pi=$PI;

sub Nodicdf
{
    ($nodimu,$nodisigmasquared,$nodix)=@_;
    $znodi=($nodix-$nodimu)/$nodisigmasquared;
    $ynodi=ndtr($znodi);
    return $ynodi;
}

sub Nodipdf
{
    ($nodimu,$nodisigmasquared,$nodix)=@_;
    $ynodi=(1/(sqrt((2*$pi*$nodisigmasquared))))*(exp((($nodix-$nodimu)**2)/((-2)*$nodisigmasquared)));
    return $ynodi;
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
    $y1=$sum1;
$sum1=0;
    $sum2=0;
for ($i2=0;$i2<=$s;++$i2)
{
    $ttimess=$t*$s;
    $ttimesi=$t*$i2;
    $tsoveri=Choose($ttimess,$i2);
    $tsoverti=Choose($ttimess,$ttimesi);
    $sum2=$sum2+($tsoveri*$tsoverti);
}
    $y2=$sum2;
$sum2=0;
$z=((1+$t)*$y1)/$y2;
$y=1-($z/($n+$z));
    $Fy=sprintf("%.3f",$y);
    print output1 "<td align=\"right\"><tt>$Fy</tt></td>";
}

sub Create2
{
    $l=$t*(log($t)/log(2));
    $C=1/(2**(($t+1+($t*(log($t)/log(2))))/(1+$t)));
    $z=$C/(1+($C*$t)+$C);
    $y=1-((1+$t)*$z);
    $Fy=sprintf("%.3f",$y);
    print output1 "<td align=\"right\"><tt>$Fy</tt></td>"; 
}

sub Create3
{
# d1*d2 see conjecture-321.pl
    $n=$t*$s;
    $m=$n/2;
    $T=(1/($t**2));
    $a=1+$T;
    $b=((-2)*$m)*($t+1)*$T;
    $c=2*($m**2)*$T;
    $h=(-$b)/(2*$a);
    $k=($a*($h**2))+($b*$h)+$c;
    $d1d2=exp(($n*(log(4)))-(($k*($t**2))/($m)))*(sqrt($T/($pi*$m*$a)))*.5*(1+(erf(($s+.5-$h)/(sqrt($m/($a*($t**2)))))));

# n1*n2 see conjecture-331.pl
    $j=($n-1)/2;
    $A=$j+($m*($t**2));
    $B=(2*$j*(1-$m))+(2*$m*($t**2)*(($t-1-$j)/($t)));
    $C=($j*((1-$m)**2))+(($m*($t**2))*((($t-1-$j)**2)/($t**2)));
    $H=((-1)*$B)/(2*$A);
    $K=($A*($H**2))+($B*$H)+$C;
    $n1n2=($s/(sqrt($pi*$A)))*(2**((2*$n)-1))*(exp((-$K)/($m*$j)))*(1/2)*(1+(erf(((sqrt($A))*($s-0.5-$H))/(sqrt($m*$j)))));
    $z=((1+$t)*$n1n2)/$d1d2;
    $y=$n/($n+$z);
    $Fy=sprintf("%.3f",$y);
    print output1 "<td align=\"right\"><tt>$Fy</tt></td>"; 
}

sub Table1
{
print output1 "<h4>Table 1 (Fraction of Binomial Sums)</h4><p>";
print output1 "<table border=5><tr><td><tt></tt></td>";
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
print output1 "</table><p>";
}

sub Table2
{
print output1 "<h4>Table 2 (Using Formula for g(q))</h4><p>";
print output1 "<table border=5><tr><td><tt></tt></td>";
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
    &Create2;
}
print output1 "</tr>";
}
print output1 "</table><p>";
}

sub Table3
{
print output1 "<h4>Table 3 (Using Gaussian Approximation)</h4><p>";
print output1 "<table border=5><tr><td><tt></tt></td>";
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
    &Create3;
}
print output1 "</tr>";
}
print output1 "</table><p>";
}

$tmin=2;
$smin=2;
$tstep=1;
$sstep=1;
$tmax=12;
$smax=12;
$tsmax=($tmax-$tmin)/$tstep;
$ssmax=($smax-$smin)/$sstep;
open(output1,">./conjecture-348.htm");
print output1 "<html><head><title>Conjecture 331</title></head><body>"
&Table1;
&Table2;
&Table3;
print output1 "</body></html>";
close(output1);

# file:///Volumes/Kodak/stefan-2011/literatur/essays/InformationEpistemology/conjecture-348.htm

# scp becker@67.18.11.31:/home/becker/stefan/InformationEpistemology/conjecture-292-1.htm becker@67.18.11.31:/home/becker/stefan/InformationEpistemology/conjecture-292-2.htm becker@67.18.11.31:/home/becker/stefan/InformationEpistemology/conjecture-292-3.htm ./
