use Math::Cephes qw(:all);
use Math::Trig;

open(doubleyous,">./doubleyou1.R");
$tbeg=3;
$tend=3;
$tint=1;
$sbeg=1;
$send=200;
$sint=1;
$pi=$PI;
$llim=-6;
$ulim=1;

print doubleyous "xvals <- seq(from=$sbeg,to=$send,by=$sint)\n";
for ($t=$tbeg;$t<=$tend;$t=$t+$tint)
{
print doubleyous "yvalsone$t <- c(";
for ($s=$sbeg;$s<=$send;$s=$s+$sint)
{
    $n=$s*$t;
    $wone=sqrt(2/$n)*($s+(.5*(1-$n)));
    $expr1=(sqrt(2/($pi*$n))*exp(-($wone**2)))/(1+erf($wone));
print "expr1 for s=$s and t=$t is $expr1\n";
print doubleyous "$wone";
unless ($s==$send)
{
print doubleyous ",";
}
}
print doubleyous ")\n";
}
print doubleyous "plot(xvals,yvalsone$tend,xlab=\"s values (t=$tbeg,...,$tend)\",ylab=\"expr values\",type=\"n\",xlim=c($sbeg,$send),ylim=c($llim,$ulim))\n";

$col=1;
for ($t=$tbeg;$t<=$tend;$t=$t+$tint)
{
# print doubleyous "lines(xvals,yvalsone$t,type=\"l\",col=\"$col\")\n";
print doubleyous "lines(xvals,yvalsone$t,type=\"l\",col=\"$col\")\n";
++$col;
}
print doubleyous "dev.print(device=pdf, \"doubleyou1.pdf\", onefile=FALSE)\n";
close(doubleyous);
print "INFO: Now R the file doubleyou1.R ...\n";
