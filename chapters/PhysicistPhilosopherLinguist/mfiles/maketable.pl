sub dec2bin {
    my $str = unpack("B32", pack("N", shift));
   $str =~ s/^0+(?=\d)//;   # otherwise you'll get leading zeros
    return $str;
}

sub bin2dec {
    return unpack("N", pack("B32", substr("0" x 32 . shift, -32)));
}

open(bigq,">./bigq.csv");
for ($i1=0;$i1<=16;++$i1)
{
for ($i2=0;$i2<=16;++$i2)
{

if ($i1==0)
{
if ($i2>0)
{
    $j2=$i2-1;
    $j=dec2bin($j2);
    print bigq "$j2=$j,";
if ($i2==16)
{
    print bigq "\n";
}
}
else
{
    print bigq ",";
}
}

else
{
if ($i2==0)
{
    $j1=$i1-1;
    $j=dec2bin($j1);
    print bigq "$j1=$j,";
}
else
{
    print bigq ",";
if ($i2==16)
{
    print bigq "\n";
}
}
}

}
}
