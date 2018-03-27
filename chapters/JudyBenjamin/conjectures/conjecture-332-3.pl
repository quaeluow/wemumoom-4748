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

# t=4 s=3 n=12 j=5.5 m=6 (* 6 5.5) mj=33 (* 6 16) (+ 5.5 (* 6 16)) (+ (* 2 5.5 -5) (* 2 6 4 -2.5)) (+ (* 5.5 25) (* 6 (expt 2.5 2))) (/ 175 203.0)


$A=101.5;
$B=-175;
$C=175;
$H=(-$B)/(2*$A);
$K=($A*($H**2))+($B*$H)+$C;
$ss=33/(2*$A);
$y=3*(2**23)*(1/(sqrt($pi*$A)))*(exp(-$K/33))*(Nodicdf($H,$ss,2.5));

print "y=$y\n";
