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

print "The file powerset.pl creates an htm table for s and t using the\n";
print "formula H3(s,t) in inep-JudyBenjamin.tex. Now I want to do the same\n";
print "thing using the approximation formula which assigns n to EX3, n/2 to\n";
print "EX2, and a formula containing s and t for EX1. The goal, I guess, is\n";
print "to create a graph similar to plot-i2.jpg and plot-i1.jpg.\n";
$ttotal=10;
$stotal=10000;
open(output,">./approximation.htm");
print output "<html><head><title>Judy Benjamin Approximation of q3</title></head><body><table border=5><tr><td><tt></tt></td>";
for ($r3=1;$r3<=$ttotal;++$r3)
{
    print output "<td><tt>$r3</tt></td>";
}
print output "</tr>";
for ($r1=1;$r1<=$stotal;++$r1)
{
    print output "<tr><td><tt>$r1</tt></td>";
for ($r2=1;$r2<=$ttotal;++$r2)
{
    $s=$r1;
    $t=$r2;
    $n=$s*$t;
    # $x=($s/2)*($t-(sqrt(2)*((($t**2)-4)/$t))); # this was my first calculation
    $x=($n/2)*(1+((1/(sqrt(2*$n)))*((2/$t)-sqrt(8)+$t-(1/(2*$n*$s))))); # this was my second calculation
    $q3=$n/($n+($n/2)+$x);
    # print "$s - $t - $x - $q3\n";
    $FMq3=sprintf("%.4f",$q3);
    print output "<td><tt>$FMq3</tt></td>";
}
print output "</tr>";
}
    print output "</table></body></html>";
close(output);
