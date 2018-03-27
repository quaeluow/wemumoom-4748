print "Step? (e.g. .0001) ";
$s=<STDIN>;
chomp($s);
print "Beginning? (e.g. .01) ";
$b=<STDIN>;
chomp($b);
$e=1-$b;
open(plot,">./plotq1.m");
$n=1/$s;
    print plot "t=[";
for ($i1=0;$i1<$n;++$i1)
{
    $t=$b+$i1*$s*($e-$b);
    print plot "$t,";
}
    $t=$e;
    print plot "$t];\n";
    print plot "s=[";
for ($i2=0;$i2<$n;++$i2)
{
    $t=$b+$i2*$s*($e-$b);
    $logt=log($t)/log(2);
    $B=($t*$logt)+$t+1;
    $C=2**((-$B)/($t+1));
    $x=$C/(1+($C*$t)+$C);
    print plot "$x,";
}
    $t=$e;
    $logt=log($t)/log(2);
    $B=($t*$logt)+$t+1;
    $C=2**((-$B)/($t+1));
    $x=$C/(1+($C*$t)+$C);
    print plot "$x];\nplot(t,s);\n";

