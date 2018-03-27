use Math::BigInt;
sub Factorial
{
    ($choosen)=@_;
    $BIGn=Math::BigInt->new($choosen);
    $BIGnfac=$BIGn->copy();
    $BIGnfac->bfac();
    return "$BIGnfac";
}

sub Choose
{
    ($choosen,$choosek)=@_;
    $BIGn=Math::BigInt->new($choosen);
    $BIGk=Math::BigInt->new($choosek);
    $BIGnoverk=$BIGn->copy();
    $BIGmult=$BIGk->copy();
    $BIGmult->bfac();
    $BIGnoverk->bfac();
    $BIGnminusk=$BIGn->copy();
    $BIGnminusk->bsub($BIGk);
    $BIGnminusk->bfac();
    $BIGmult->bmul($BIGnminusk);
    $BIGnoverk->bdiv($BIGmult);
    return "$BIGnoverk";
}

$ttotal=20;
$stotal=5;
open(output,">./powerset.htm");
print output "<html><head><title>Judy Benjamin Power Set</title></head><body><table border=5><tr><td><tt></tt></td>";
for ($r3=1;$r3<=$ttotal;++$r3)
{
    print output "<td><tt>$r3</tt></td>";
}
print output "</tr>";
for ($r1=1;$r1<=$stotal;++$r1)
{
    print output "<tr><td><tt>$r1</tt></td>";
for ($r2=1;$r2<=$ttotal;++$r2)
{
    $s=$r1;
    $t=$r2;
$M=0;
$ttimess=$t*$s;
$twots=2*$t*$s;

for ($i1=1;$i1<=$s;++$i1)
{
    $tsoveri=&Choose($ttimess,$i1);
    $ttimesj=$t*$i1;
    $tsovertj=&Choose($ttimess,$ttimesj);
    $tsoveritimestsovertj=$tsoveri*$tsovertj;
    $M=$M+$tsoveritimestsovertj;
}

$N=(2**(2*$t*$s))*$M;
$sum=0;

for ($j2=0;$j2<=$twots;++$j2)
{
for ($j1=1;$j1<=$s;++$j1)
{
    $tsoveri=&Choose($ttimess,$j1);
    $ttimesi=$t*$j1;
    $tsoverti=&Choose($ttimess,$ttimesi);
    $twotsoverj=&Choose($twots,$j2);
    $phiij=$j2/($j2+($j1*(1+$t)));
    $mij=$tsoveri*$tsoverti*$twotsoverj;
    $sum=$sum+($phiij*$mij);
}
}
$q3=$sum/$N;
$FMq3=sprintf("%.4f",$q3);
print output "<td><tt>$FMq3</tt></td>";
}
print output "</tr>";
}
    print output "</table></body></html>";
close(output);

# t=3 s=1
# octave> (18*(1/5)+45*(2/6)+60*(3/7)+45*(4/8)+18*(5/9)+3*(6/10))/192.0
# ans =  0.40945

# t=3 s=2
# octave> (12*(120*(1/5)+15*(1/9))+66*(120*(2/6)+15*(2/10))+220*(120*(3/7)+15*(3/11))+495*(120*(4/8)+15*(4/12))+792*(120*(5/9)+15*(5/13))+924*(120*(6/10)+15*(6/14))+792*(120*(7/11)+15*(7/15))+495*(120*(8/12)+15*(8/16))+220*(120*(9/13)+15*(9/17))+66*(120*(10/14)+15*(10/18))+12*(120*(11/15)+15*(11/19))+1*(120*(12/16)+15*(12/20)))/552960
# ans =  0.56821
