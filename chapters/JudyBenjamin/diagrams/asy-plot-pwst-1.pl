# print "Step? (e.g. .0001) ";
# $s=<STDIN>;
# chomp($s);
# print "Beginning? (e.g. .01) ";
# $b=<STDIN>;
# chomp($b);
$max=50;
open(plot,">./asy-plot-pwst-1.asy");
    print plot "pair zzz1=(.5*n,.25*n);\n";
for ($t=2;$t<$max;++$t)
{
    $x=$t/($t+1);
    $q=$t/($t+1);
    $expt=exp((1/((($t**2)+1)**2))*((2*($t**3))-(3*($t**2))+(4*$t)-5));
    $q3=$t/($t+(.5*$t*$expt)+(.5*$expt));
    $y=(1-$q3)*(1-$q);
    print plot "pair zzz$t=($x*n,$y*n);\n";
}
for ($t=2;$t<$max;++$t)
{
    $x=(1-($t/($t+1)));
    $q=$t/($t+1);
    $expt=exp((1/((($t**2)+1)**2))*((2*($t**3))-(3*($t**2))+(4*$t)-5));
    $q3=$t/($t+(.5*$t*$expt)+(.5*$expt));
    $y=(1-$q3)*$q;
    print plot "pair zzzz$t=($x*n,$y*n);\n";
}

    print plot "path q1ch=";
for ($i1=2;$i1<$max;++$i1)
{
    $t1=$max+1-$i1;
    print plot "zzzz$t1--";
}
    print plot "zzz1--";
for ($i2=2;$i2<$max;++$i2)
{
    print plot "zzz$i2";
unless ($i2==49)
{
    print plot "--";
}
}
    print plot ";\n";
close(plot);
