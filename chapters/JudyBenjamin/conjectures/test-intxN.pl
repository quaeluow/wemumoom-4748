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

print "This perl file test if it is indeed true that \n";
print "\\sum_{k=0}^{m}k\\binom{n}{k}\\approx{}2^{n}\\int_{-\\infty}^{m+\\frac{1}{2}}xN\\left(\\frac{n}{2},\\frac{n}{4}\\right)(x)dx\\nootag\n";

$mmax=30;
$nmax=50;

open(output1,">./test-intxN-1.htm");
open(output2,">./test-intxN-2.htm");
open(output3,">./test-intxN-3.htm");
print output1 "<html><head><title>Test IntxN</title></head><body><table border=5><tr><td><tt></tt></td>";
print output2 "<html><head><title>Test IntxN</title></head><body><table border=5><tr><td><tt></tt></td>";
print output3 "<html><head><title>Test IntxN</title></head><body><table border=5><tr><td><tt></tt></td>";
for ($n1=1;$n1<=$mmax;++$n1)
{
print output1 "<td><tt>$n1</tt></td>";
print output2 "<td><tt>$n1</tt></td>";
print output3 "<td><tt>$n1</tt></td>";
}
print output1 "</tr>";
print output2 "</tr>";
print output3 "</tr>";
for ($n1=1;$n1<=$nmax;++$n1)
{
print output1 "<tr><td><tt>$n1</tt></td>";
print output2 "<tr><td><tt>$n1</tt></td>";
print output3 "<tr><td><tt>$n1</tt></td>";
for ($m1=1;$m1<=$mmax;++$m1)
{
$sum1=0;
for ($i1=0;$i1<=$m1;++$i1)
{
$sum1=$sum1+($i1*(Choose($n1,$i1)));
}
$qt1=$sum1/(2**$n1);
$Fqt1=sprintf("%.4f",$qt1);
print output1 "<td><tt>$Fqt1</tt></td>";
$w1=(sqrt(2)/sqrt($n1))*($m1+.5-($n1/2));
$summand1=($n1/4)*(erf($w1)+1);
$summand2=sqrt($n1/(2*$pi))*.5*exp((-1)*($w1**2));
$qt2=$summand1-$summand2;
$Fqt2=sprintf("%.4f",$qt2);
print output2 "<td><tt>$Fqt2</tt></td>";
$qt3=$qt2-$qt1;
$Fqt3=sprintf("%.4f",$qt3);
print output3 "<td><tt>$Fqt3</tt></td>";
}
print output1 "</tr>";
print output2 "</tr>";
print output3 "</tr>";
}
print output1 "</table></body></html>";
print output2 "</table></body></html>";
print output3 "</table></body></html>";
close(output);
