sub Create1
{
    $n=$t*$s;
    $m=$n/2;
$psi=($t**2)+1;
    $T=(1/($t**2));
    $a=1+$T;
    $b=((-2)*$m)*($t+1)*$T;
    $c=2*($m**2)*$T;
    $h=(-$b)/(2*$a);
    $k=($a*($h**2))+($b*$h)+$c;
    $j=($n-1)/2;
    $A=$j+($m*($t**2));
    # $B=(2*$j*(1-$m))+(2*$m*($t**2)*(($t-1-$j)/($t)));
    $B=(2*$j*(1-$m))+(2*$m*$t*($t-1-$j));
    # $C=($j*((1-$m)**2))+(($m*($t**2))*((($t-1-$j)**2)/($t**2)));
    $C=($j*((1-$m)**2))+($m*(($t-1-$j)**2));
    $H=((-1)*$B)/(2*$A);
    $K=($A*($H**2))+($B*$H)+$C;
$den=$A*$a*$m*($m-.5)*($t**2);
$arg1=($t**2)*$A*($t**2)*$j*($b**2);
$arg2=($t**2)*$A*($t**2)*$j*$a*$c;
$arg3=($t**2)*$a*($B**2);
$arg4=($t**2)*$a*$A*$C;
$phi=$t+1;
$arg11=((4*$psi*($phi**2))*($m**4))-((2*($psi+1)*($phi**2))*($m**3))+(($phi**2)*($m**2))+((0)*($m**1))+(0);
$arg12=((2*($psi**2))*($m**4))-((($psi**2)+$psi)*($m**3))+((.5*$psi)*($m**2))+((0)*($m**1))+(0);

# $arg13=((4*$psi*(($t+1)**2))*($m**4))-((4*$psi*($t+1)*((2*($t**2))+$t-3))*($m**3))+(($psi*((4*($t+1)))-(((2*($t**2))+$t-3)**2))*($m**2))+(($psi*((4*($t**2))+(2*$t)-6))*($m**1))+($psi);
# $arg13=((4*$psi*(($t+1)**2))*($m**4))-((4*$psi*($t+1)*((2*($t**2))-$t+3))*($m**3))+(($psi*((4*($t+1)))+(((2*($t**2))-$t+3)**2))*($m**2))-(($psi*((4*($t**2))-(2*$t)+6))*($m**1))+($psi);
# $arg13=((4*$psi*(($t+1)**2))*($m**4))-((4*$psi*($t+1)*((2*($t**2))+$t-3))*($m**3))+(($psi*((4*($t+1)))+(((2*($t**2))+$t-3)**2))*($m**2))-(($psi*((4*($t**2))+(2*$t)-6))*($m**1))+($psi);
$arg13=((4*$psi*(($t+1)**2))*($m**4))-((4*$psi*($t+1)*((2*($t**2))-$t+3))*($m**3))+(($psi*((4*($t+1)))-(((2*($t**2))-$t+3)**2))*($m**2))+(($psi*((4*($t**2))-(2*$t)+6))*($m**1))+($psi);

    $arg23=$psi*((4*((1+$t)**2))*($m**4)-(4*(1+$t)*($m**3)*((2*($t**2))-$t+3))+(((((2*($t**2))-$t+3)**2)+(4*(1+$t)))*($m**2))-(2*((2*($t**2))-$t+3)*$m)+1);

# there is a problem with arg3, but it's not the s4 factor that's the issue
$arg14=((2*($psi**2))*($m**4))-(((((2*$t)+1.5)*($psi**2))+($psi))*($m**3))+((((($t**2)-$t+(9/4))*($psi**2))+(($t+.75)*($psi)))*($m**2))-(((.5*($psi**2))+(.5*(($t**2)-$t+(9/4))*$psi))*($m**1))+(.25*$psi);
$num=((-.25*$arg1)+$arg2+(.25*$arg3)-$arg4);
    $sum1=(-$K/($m*$j))+((($t**2)*$k)/$m);
$sum2=$num/$den;
# print "$arg1 $arg11 $arg2 $arg12 $arg3 $arg13 $arg4 $arg14\n";
print "arg3=$arg3 arg13=$arg13 arg23=$arg23\n";
    $Fsum=sprintf("%.4f",$sum);
    print output1 "<td align=\"right\"><tt>$Fsum</tt></td>";
}

$tmin=2;
$smin=2;
$tstep=1;
$sstep=1;
$tmax=5;
$smax=5;
open(output1,">./conjecture-367.htm");
print output1 "<html><head><title>Conjecture 367</title></head><body><table border=5><tr><td><tt></tt></td>";
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

# file:///Volumes/Kodak/stefan-2011/literatur/essays/InformationEpistemology/conjecture-367.htm

# scp becker@67.18.11.31:/home/becker/stefan/InformationEpistemology/conjecture-292-1.htm becker@67.18.11.31:/home/becker/stefan/InformationEpistemology/conjecture-292-2.htm becker@67.18.11.31:/home/becker/stefan/InformationEpistemology/conjecture-292-3.htm ./
