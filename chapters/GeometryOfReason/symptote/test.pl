sub test
{
    $a=@_[0];
    $b=@_[1];
    $c=$a+$b;
}

$n=&test("1","2");
print "$n\n";