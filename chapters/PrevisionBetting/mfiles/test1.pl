use Math::CDF;
print "Expected number of goals? ";
$eng=<STDIN>;
chomp($eng);
for ($i1=0;$i1<=6;++$i1)
{
    $t2=$i1-1;
    $t1=&Math::CDF::ppois($i1,$eng)-&Math::CDF::ppois($t2,$eng);
    print "Probability of $i1 goal(s): "."$t1\n";
}
