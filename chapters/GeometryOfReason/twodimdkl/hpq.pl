print "What is p? ";
$p=<stdin>;
chomp($p);
print "What is q? ";
$q=<stdin>;
chomp($q);
$ph=1-$p;
$qh=1-$q;
$hpq=(((-1)*$q*log($q))+((-1)*$qh*log($qh)))-(((-1)*$p*log($p))+((-1)*$ph*log($ph)))+($q*(log($p/$ph)))+($p*(log($qh/$q)))+(log($ph/$qh));
$lhs=($p+$q)*log($p/$q);
$rhs=($ph+$qh)*log($qh/$ph);
$gtz=($q*(log($p/$q)))+($qh*(log($ph/$qh)));
$stz=($ph*(log($qh/$ph)))+($p*(log($q/$p)));
$stt=(($ph+$qh)*($qh/$ph))+(($p+$q)*($q/$p));
$astz=(($ph+$qh)*(log($qh/$ph)))+(($p+$q)*log($q/$p));
# print "HPQ: $hpq\tLHS: $lhs\tRHS: $rhs\tGTZ: $gtz\tSTZ: $stz\n";
print "HPQ: $hpq\tResult: $astz\n";














