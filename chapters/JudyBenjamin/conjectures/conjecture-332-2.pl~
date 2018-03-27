use lib "/home/becker/stefan/myperl/lib/perl5/site_perl/5.8.0/i386-linux-thread-multi";
use Math::Cephes qw(:all);
use Math::BigInt;
$pi=$PI;

sub Nodicdf
{
    ($nodimu,$nodisigmasquared,$nodix)=@_;
    $znodi=($nodix-$nodimu)/$nodisigmasquared;
    $ynodi=ndtr($znodi);
    return $ynodi;
}

sub Nodipdf
{
    ($nodimu,$nodisigmasquared,$nodix)=@_;
    $ynodi=(1/(sqrt((2*$pi*$nodisigmasquared))))*(exp((($nodix-$nodimu)**2)/((-2)*$nodisigmasquared)));
    return $ynodi;
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

# t=4 s=3 n=12 j=5.5 m=6 (* 6 5.5) mj=33 (* 6 16)

$y=3*(2**23)*(1/($pi*(sqrt(33))))*(((exp((-1/33)*((5.5*((1-6)**2))+(96*((1-(6.5/4))**2))))))+((exp((-1/33)*((5.5*((2-6)**2))+(96*((2-(6.5/4))**2))))))+((exp((-1/33)*((5.5*((3-6)**2))+(96*((3-(6.5/4))**2)))))));
print "y=$y\n";
