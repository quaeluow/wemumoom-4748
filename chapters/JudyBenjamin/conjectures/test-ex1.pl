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

print "This perl file tests where EX_{1}=\\frac{\\sum_{i=0}^{s}i\\binom{ts}{i}}{\\sum_{i=0}^{s}\\binom{ts}{i}} is going.\n";
print "It outputs a table with qt relative to s and t.\n";

$smax=200;
$tmax=3;

open(output1,">./test-ex1-1.htm");
print output1 "<html><head><title>Test EX1</title></head><body><table border=5><tr><td><tt></tt></td>";
for ($t1=3;$t1<=$tmax;++$t1)
{
print output1 "<td><tt>$t1</tt></td>";
}
print output1 "</tr>";
for ($s1=200;$s1<=$smax;++$s1)
{
print output1 "<tr><td><tt>$s1</tt></td>";
for ($t1=3;$t1<=$tmax;++$t1)
{
    $n=$t1*$s1;
$sumnum=0;
for ($i1=0;$i1<=$s1;++$i1)
{
    $tsoveri=Choose($n,$i1);
    $sumnum=$sumnum+($i1*$tsoveri);
    print "$i1 ";
}
$sumden=0;
for ($i2=0;$i2<=$s1;++$i2)
{
    $tsoveri=Choose($n,$i2);
    $sumden=$sumden+$tsoveri;
    print "$i2 ";
}
$ex1=$sumnum/$sumden;
$ex2=$n/2;
$ex3=$n;
$qt=$ex3/($ex1+$ex2+$ex3);
# $Fex1=sprintf("%.4f",$ex1);
# print "$Fex1 for $s1 and $t1\n";
# print output1 "<td><tt>$Fex1</tt></td>";
$Fqt=sprintf("%.4f",$qt);
print "$Fqt for $s1 and $t1\n";
print output1 "<td><tt>$Fqt</tt></td>";
}
print output1 "</tr>";
}
print output1 "</table></body></html>";
close(output);
