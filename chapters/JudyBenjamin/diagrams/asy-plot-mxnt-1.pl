# print "Step? (e.g. .0001) ";
# $s=<STDIN>;
# chomp($s);
# print "Beginning? (e.g. .01) ";
# $b=<STDIN>;
# chomp($b);
$s=.001;
$b=.001;
$e=1-$b;
open(plot,">./asy-plot-mxnt-1.asy");
$n=1/$s;
for ($i1=0;$i1<$n;++$i1)
{
    $x=$b+$i1*$s*($e-$b);
    $q=$b+$i1*$s*($e-$b);
    $t=$q/(1-$q);
    $logt=log($t)/log(2);
    $B=($t*$logt)+$t+1;
    $C=2**((-$B)/($t+1));
    $y=$C/(1+($C*$t)+$C);
    print plot "pair z$i1=($x*n,$y*n);\n";
}
    print plot "path q1ch=";
for ($i1=0;$i1<$n;++$i1)
{
    print plot "z$i1";
unless ($i1==$n-1)
{
    print plot "--";
}
}
    print plot ";\n";
close(plot);
