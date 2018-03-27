sub calcy
{
    ($qin)=@_;
    $tin=$qin/(1-$qin);
    $yin=($tin+2)/(($tin+1)*((3*$tin)+2));
    return $yin;
}

sub calcz
{
    ($qin)=@_;
    $tin=$qin/(1-$qin);
    $yin=($tin+2)/(($tin+1)*((3*$tin)+2));
    $zin=$yin*$tin;
    return $zin;
}

print "Step? (default .0001) ";
$s=<STDIN>;
chomp($s);
print "Beginning? (default .01) ";
$b=<STDIN>;
chomp($b);
if ($s eq "")
{
    $s=.0001;
}
if ($b eq "")
{
    $b=.01;
}

$e=1-$b;
open(plot,">./plotq-i3.R");
$n=1/$s;
    print plot "t=c(";
for ($i1=0;$i1<$n;++$i1)
{
    $x=$b+$i1*$s*($e-$b);
    print plot "$x,";
}
    $x=$e;
    print plot "$x)\n";
    print plot "s=c(";
for ($i2=0;$i2<$n;++$i2)
{
    $q=$b+$i2*$s*($e-$b);
    $y=calcy($q);
    print plot "$y,";
}
    $q=$e;
    $y=calcy($q);
    print plot "$y)\n";
    print plot "u=c(";
for ($i3=0;$i3<$n;++$i3)
{
    $q=$b+$i3*$s*($e-$b);
    $z=calcz($q);
    print plot "$z,";
}
    $q=$e;
    $z=calcz($q);
    print plot "$z)\n";
    print plot "v=c(";
for ($i3=0;$i3<$n;++$i3)
{
    print plot "1,";
}
    print plot "1)\n";
$type="h";
print plot "plot(t,v,ylim=c(0,1),xlab=\"\",ylab=\"\",type=\"$type\",col=\"blue\")\n";
print plot "lines(t,u,ylim=c(0,1),xlab=\"\",ylab=\"\",type=\"$type\",col=\"green\")\n";
print plot "lines(t,s,ylim=c(0,1),xlab=\"\",ylab=\"\",type=\"$type\",col=\"red\")\n";
print plot "dev.print(device=jpeg, \"plotq-i3.jpg\", width=600)\n";
close(plot);
