$d=0.001;
$x=$d;
$y=$d;
$z=$d;
open(datax,">./s1160.csv");

if (0<=$x)
{
    print "Hi.\n";
}

while ($x<=.3)
{
while ($y<=.3)
{
while ($z<=.06)
{
if ((.24+$z+$d<=$x+$y)&&($x+$y+$d<=.3))
{
    $h=-((($x)*log(($x)))+(($y)*log(($y)))+(($z)*log(($z)))+((.4-$x)*log((.4-$x)))+((.3-$y)*log((.3-$y)))+((.14+$z)*log((.14+$z)))+((.06-$z)*log((.06-$z)))+((.3-$x-$y)*log((.3-$x-$y)))+((.04)*log((.04)))+((-.24+$x+$y-$z)*log((-.24+$x+$y-$z))));
    print datax "$x,$y,$z,$h\n";
}
    $z=$z+$d;
}
$z=$d;
    $y=$y+$d;
}
$y=$d;
    $x=$x+$d;
}

# else
# {
#     print "$x,$y,$z,0,$ff\n";
#     print datax "$x,$y,$z,0,$ff\n";
# }
    # $g[0]=log($x);
    # print "$g[0]-0,";
    # $g[1]=log($y);
    # print "$g[1]-1,";
    # $g[2]=log($z);
    # print "$g[2]-2,";
    # $g[3]=log(.4-$x);
    # print "$g[3]-3,";
    # $g[4]=log(.3-$y);
    # print "$g[4]-4,";
    # $g[5]=log(.14+$z);
    # print "$g[5]-5,";
    # $g[6]=log(.06-$z);
    # print "$g[6]-6,";
    # $g[7]=log(.3-$x-$y);
    # print "$g[7]-7,";
    # $g[8]=log(.04);
    # print "$g[8]-8,";
    # $g[9]=log(-.24+$x+$y-$z);
    # print "$g[9]-9\n";
