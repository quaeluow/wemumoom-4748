use Math::Trig;
open(plotw,">./plotw.R");
$tbeg=3;
$tend=20;
$tint=1;
$sbeg=1;
$send=1000;
$sint=1;

print plotw "xvals <- seq(from=$sbeg,to=$send,by=$sint)\n";
for ($t=$tbeg;$t<=$tend;$t=$t+$tint)
{
print plotw "yvals$t <- c(";
for ($s=$sbeg;$s<=$send;$s=$s+$sint)
{
# $w=($s*((2/($t*$s))**.5))+(1/((2*$t*$s)^.5))-($s*$t*((2/($t*$s))^.5));
$w=($s+(.5*(1-($t*$s))))*((2/($t*$s))**.5);
print plotw "$w";
unless ($s==$send)
{
print plotw ",";
}
}
print plotw ")\n";
}
print plotw "plot(xvals,yvals$tend,type=\"n\",xlim=c($sbeg,$send))\n";
for ($t=$tbeg;$t<=$tend;$t=$t+$tint)
{
print plotw "lines(xvals,yvals$t,xlab=\"s values (t=3,...,20)\",ylab=\"w values\",type=\"l\",col=\"$t\")\n";
}
print plotw "dev.print(device=pdf, \"plotw.pdf\", onefile=FALSE)\n";
close(plotw);
print "INFO: Now R the file twodfun.R ...\n";
