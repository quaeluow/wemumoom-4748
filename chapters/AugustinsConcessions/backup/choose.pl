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

# C(k)=\left(42\choose{}k\right)\frac{9}{42}^{k}\frac{33}{42}^{42-k}

$c=&Choose(42,9);
$p=(9/42)**9;
$q=(33/42)**33;
$result=$c*$p*$q;
print "The result is: $result\n";
