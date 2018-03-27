# for calculations see Schmierbuch p1946 and p1947
print "Judy Benjamin. Priors: a, b, c. Posteriors: x, y, z. Let y=kx. Then what are x, y, z?\n";
print "Enter a (for Judy, this would be 0.25): ";
$a=<STDIN>;
chomp($a);
print "Enter b (for Judy, this would be 0.25): ";
$b=<STDIN>;
chomp($b);
print "Enter c (for Judy, this would be 0.5) : ";
$c=<STDIN>;
chomp($c);
print "Enter k (for Judy, this would be 3)   : ";
$k=<STDIN>;
chomp($k);
$A1=log($a);
$A2=$k*log($b);
$A3=log(1-$a-$b);
$A4=(1+$k)*$A3;
$A5=$k*(log($k));
$A6=$A4+$A5-$A1-$A2;
$A7=$A6/(1+$k);
$B=exp(-$A7);
$x=$B/(1+($k*$B)+$B);
$y=$k*$x;
$z=1-$x-$y;
print "Result for x                          : $x\n";
print "Result for y                          : $y\n";
print "Result for z                          : $z\n";
