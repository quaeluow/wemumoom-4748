open(jeco,"<./jeco.csv");
@jeco=<jeco>;
close(jeco);
foreach $jeco (@jeco)
{
    chomp($jeco);
}
for ($i1=0;$i1<=$#jeco;++$i1)
{
    undef(@t1);
    undef(@t2);
    @t1=split(",",$jeco[$i1]);
    $numOfPart=$t1[0];
for ($i2=1;$i2<=$numOfPart;++$i2)
{
    $v1=$i2-1;
    $t2[$v1]=$t1[$i2];
}
$v2=$numOfPart+1;
for ($i3=$v2;$i3<=$#t1;++$i3)
{
    $sum=$sum+$t1[$i3];
}
print "There are $numOfPart partition sets and the sum of the probabilities is $sum.\n";
}
