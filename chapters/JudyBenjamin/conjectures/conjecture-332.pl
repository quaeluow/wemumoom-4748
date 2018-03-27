use lib "/home/becker/stefan/myperl/lib/perl5/site_perl/5.8.0/i386-linux-thread-multi";
use Math::Cephes qw(:all);
use Math::BigInt;
$pi=$PI;

sub Nodicdf
{
    ($nodimu,$nodisigmasquared,$nodix)=@_;
    $z=($nodix-$nodimu)/$nodisigmasquared;
    $y=ndtr($z);
    return $y;
}

sub Nodipdf
{
    ($nodimu,$nodisigmasquared,$nodix)=@_;
    $y=(1/(sqrt((2*$pi*$nodisigmasquared))))*(exp((($nodix-$nodimu)**2)/((-2)*$nodisigmasquared)));
    return $y;
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

# print "Provide n: ";
# $n=<STDIN>;
# chomp($n);
# print "Provide k: ";
# $k=<STDIN>;
# chomp($k);
# $nchoosek=Choose($n,$k);
# $novertwo=$n/2;
# $noverfour=$n/4;
# # $nappk=(2**$n)*Nodi($novertwo,$noverfour,$k);
# $nappk=(2**$n)*(1/(sqrt(($pi*$n)/2)))*(exp((($k-$novertwo)**2)/(-$novertwo)));
# print "VALUE: $nchoosek APPR: $nappk\n";

$y=3*(2**23)*((Nodipdf(6,3,1)*Nodipdf(5.5,2.75,3))+(Nodipdf(6,3,2)*Nodipdf(5.5,2.75,7))+(Nodipdf(6,3,3)*Nodipdf(5.5,2.75,11)));
print "y=$y\n";
