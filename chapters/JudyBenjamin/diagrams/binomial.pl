use Math::Cephes qw(:all);

print "What is n? ";
$n=<STDIN>;
chomp($n);
print "What is t (must be a divisor of n)? ";
$t=<STDIN>;
chomp($t);
$s=$n/$t;
$e=exp(1);
$pi=$PI;
$two=sqrt(4);

$w1=sqrt(2/($n))*($s+(.5*(1-$n)));
$w2=($n+1)/(sqrt(2)*$n);
$w3=((2*$n)+1)/(2*sqrt($n));

$num1=($n/4)+(($n/4)*erf($w1))-(sqrt(n/(8*$pi))*exp(-($w1**2)));
$num2=($n/4)+(($n/4)*erf($w2))-(sqrt(n/(8*$pi))*exp(-($w2**2)));
$num3=($n/2)+(($n/2)*erf($w3))-(sqrt(n/(4*$pi))*exp(-($w3**2)));

$den1=.5*(erf($w1)+1);
$den2=.5*(erf($w2)+1);
$den3=.5*(erf($w3)+1);

$ex1=$num1/$den1;
$ex2=$num2/$den2;
$ex3=$num3/$den3;

print "$num1\n";
print "$num2\n";
print "$num3\n";
print "$den1\n";
print "$den2\n";
print "$den3\n";
print "$ex1\n";
print "$ex2\n";
print "$ex3\n";










