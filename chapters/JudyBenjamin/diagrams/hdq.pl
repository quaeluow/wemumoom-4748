sub dec2bin 
{ 
my $str = unpack("B32", pack("N", shift)); 
return $str; 
}

$n=24;
$ex=2**$n;
# A1 is 0,...,$a1-1
# A2 is $a1,...,$a2-1
# A3 is $a2,...,$n-1
$a1=$n*.25;
$a2=$n*.5;
for ($i1=0;$i1<$ex;++$i1)
{
    $bin=dec2bin($i1);
    @t1=split("",$bin);
# check if P(B2)/P(B1)=3;
# if yes return P(B3)/P(B)
}
