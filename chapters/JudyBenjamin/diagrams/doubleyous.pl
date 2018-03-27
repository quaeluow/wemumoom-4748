use Math::Cephes qw(:all);
use Math::Trig;

open(doubleyous,">./doubleyous.R");
$tbeg=2;
$tend=10;
$tint=1;
$sbeg=1;
$send=10;
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

print doubleyous "yvalstwo$t <- c(";
for ($s=$sbeg;$s<=$send;$s=$s+$sint)
{
    $n=$s*$t;
    $wtwo=($n+1)/($n*sqrt(2));
    $expr2=(sqrt(2/($pi*$n))*exp(-($wtwo**2)))/(1+erf($wtwo));
print "expr2 for s=$s and t=$t is $expr2\n";
print doubleyous "$expr2";
unless ($s==$send)
{
print doubleyous ",";
}
}
print doubleyous ")\n";

print doubleyous "yvalsthr$t <- c(";
for ($s=$sbeg;$s<=$send;$s=$s+$sint)
{
    $n=$s*$t;
    $wthr=((2*$n)+1)/(2*sqrt($n));
    $expr3=(sqrt(1/($pi*$n))*exp(-($wthr**2)))/(1+erf($wthr));
print "expr3 for s=$s and t=$t is $expr3\n";
print doubleyous "$expr3";
unless ($s==$send)
{
print doubleyous ",";
}
}
print doubleyous ")\n";
}
print doubleyous "plot(xvals,yvalsone$tend,xlab=\"s values (t=$tbeg,...,$tend)\",ylab=\"expr values\",type=\"n\",xlim=c($sbeg,$send),ylim=c($llim,$ulim))\n";

for ($t=$tbeg;$t<=$tend;$t=$t+$tint)
{
# print doubleyous "lines(xvals,yvalsone$t,type=\"l\",col=\"$col\")\n";
print doubleyous "lines(xvals,yvalsone$t,type=\"l\",col=2)\n";
++$col;
# print doubleyous "lines(xvals,yvalstwo$t,type=\"l\",col=\"$col\")\n";
print doubleyous "lines(xvals,yvalstwo$t,type=\"l\",col=3)\n";
++$col;
# print doubleyous "lines(xvals,yvalsthr$t,type=\"l\",col=\"$col\")\n";
print doubleyous "lines(xvals,yvalsthr$t,type=\"l\",col=4)\n";
++$col;
}
print doubleyous "dev.print(device=pdf, \"doubleyous.pdf\", onefile=FALSE)\n";
close(doubleyous);
print "INFO: Now R the file doubleyous.R ...\n";
