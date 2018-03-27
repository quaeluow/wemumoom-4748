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

print "Enter a number and I will provide the factorial and the binomial coefficients: ";
$n=<STDIN>;
chomp($n);
$twottpon=2**$n;
print "2 to the power of $n is $twottpon\n";
    $nfac=&Factorial($n);
print "The factorial of $n is $nfac\n";

for ($i1=0;$i1<=$n;++$i1)
{
    $noverk=&Choose($n,$i1);
    print "The binomial coefficient $n over $i1 is $noverk\n";
}
