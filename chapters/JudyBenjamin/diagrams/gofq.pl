print "Enter q: ";
$q=<STDIN>;
chomp($q);

$t=$q/(1-$q);
print "t is $t ...\n";
$l=$t*(log($t)/log(2));
print "l is $l ...\n";
$C=1/(2**(($t+1+($t*(log($t)/log(2))))/(1+$t)));
print "C is $C ...\n";
$gofq=$C/(1+($C*$t)+$C);
print "G(q) is $gofq ...";
