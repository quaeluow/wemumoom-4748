$x1=.3;
$x2=.4;
$x3=.3;
    $entx=($x1*log($x1))+($x2*log($x2))+($x3*log($x3));
open(s1804,">./s1804.htm");
print s1804 "<html><head><title>Testing Sudelbuch Page 1804 Inequality</title><body bgcolor=\"ffffff\" text=\"000000\"></head><body><tt>x=($x1,$x2,$x3)</tt><p>";
print s1804 "<table border=\"5\"><tr><td></td>";
for ($i3=1;$i3<=99;++$i3)
{
    $yy2=$i3/100;
print s1804 "<td><tt>y2=$yy2</tt></td>";
}
print s1804 "</tr>";

for ($i1=1;$i1<=99;++$i1)
{
    $y1=$i1/100;
    print s1804 "<tr><td><tt>y1=$y1</tt></td>";
for ($i2=1;$i2<100-$i1;++$i2)
{
    $y2=$i2/100;
    # print "y1=$y1 ";
    # print "y2=$y2 ";
    $y3=1-$y1-$y2;
    # print "y3=$y3\n";
    $enty=($y1*log($y1))+($y2*log($y2))+($y3*log($y3));
    $sum1=($y1-$x1)*log($y1/$x1)+($y2-$x2)*log($y2/$x2)+($y3-$x3)*log($y3/$x3);
    $sum2=((($y1-$x1)**2)/$x1)+((($y2-$x2)**2)/$x2)+((($y3-$x3)**2)/$x3);
    $comp=$sum1-$sum2;
if ($enty>$entx)
{
    $cole="green";
}
elsif ($enty==$entx)
{
    $cole="red";
}
else
{
    $cole="blue";
}
# print "$cole\n";
$comps=sprintf("\%.2f",$comp);
    print s1804 "<td><tt><font color=\"$cole\">$comps</tt></td>";
}
for ($i4=0;$i4<=$i1;++$i4)
{
    print s1804 "<td></td>";
}
    print s1804 "</tr>";
}
    print s1804 "</table></body></html>";
