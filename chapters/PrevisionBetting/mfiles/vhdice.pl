use POSIX qw/floor/; # for floor function
use List::Util qw( min max ); # for min and max
# links:
# https://en.wikipedia.org/wiki/User:Skinnerd/Simplex_Point_Picking
# http://mathworld.wolfram.com/SimplexPointPicking.html
# http://software.techassistbox.com/generate-n-random-numbers-whose-sum-is-constant-k---excel_282285.html

sub BRAZIL
{
$t1=rand;
$res=floor($t1*$ds);
# print "$res\n";

$s1=0;
for ($i1=0;$i1<$ds;++$i1)
{
    $y1=rand;
    $y2=rand;
    $x1[$i1]=-log($y1); # following simplex point picking on https://en.wikipedia.org/wiki/User:Skinnerd/Simplex_Point_Picking
    $x2[$i1]=-log($y2);
    $s1=$s1+$x1[$i1];
    $s2=$s2+$x2[$i1];
}
for ($i2=0;$i2<$ds;++$i2)
{
    $b1[$i2]=$x1[$i2]/$s1;
    $b2[$i2]=$x2[$i2]/$s2;
    $b1r=sprintf("\%.3f", $b1[$i2]); # the hero's bets
    $b2r=sprintf("\%.3f", $b2[$i2]); # the villain's bets
    # print "$b1r\t$b2r\n";
}
# $vmin=min @b2;
$r=rand;
# $imp=$r*$vmin; # This gave us too little imprecision
$imp=$r*$ij;      # uniform of (0,.5)
    $impr=sprintf("\%.3f", $imp);
    # print "plus minus $impr\n";
for ($i3=0;$i3<$ds;++$i3)
{
if ($b2[$i3]+$imp>1)
{
    $vbet=1;
}
else
{
    $vbet=$b2[$i3]+$imp;
}
if ($b2[$i3]-$imp<0)
{
    $wbet=0;
}
else
{
    $wbet=$b2[$i3]-$imp;
}
if ($b1[$i3]>$vbet)
{
    $stake=($b1[$i3]-($vbet))*100;
    $rate=$vbet+(.5*($b1[$i3]-$vbet));
    # print "Stake: $stake; Rate: $rate\n";
if ($res==$i3)
{
    $heroglobal=$heroglobal+$stake-($rate*$stake);
    $herolocal=$herolocal+$stake-($rate*$stake);
}
else
{
    $heroglobal=$heroglobal-($rate*$stake);
    $herolocal=$herolocal-($rate*$stake);
}
}
elsif ($wbet>$b1[$i3])
{
    $stake=(-$b1[$i3]+$wbet)*100;
    $rate=$b1[$i3]+(.5*(-$b1[$i3]+$wbet));
    # print "Stake: $stake; Rate: $rate\n";
if ($res==$i3)
{
    $heroglobal=$heroglobal-((1-$rate)*$stake);
    $herolocal=$herolocal-((1-$rate)*$stake);
}
else
{
    $heroglobal=$heroglobal+$stake-((1-$rate)*$stake);
    $herolocal=$herolocal+$stake-((1-$rate)*$stake);
}
}
else
{
    # print "No bet.\n";
}
}
}

print "How many sides does the die have? ";
$ds = <STDIN>;
chomp($ds);

print "How fuzzy is our villain (0.0-1.0)? ";
$ij = <STDIN>;
chomp($ij);

print "How many rolls? ";
$nwc = <STDIN>;
chomp($nwc);

srand;
open(heroglobal,">./heroglobal.R");
print heroglobal "hg <- c(";
for ($i22=0;$i22<$nwc;++$i22)
{
    $heroglobal=0;
    &BRAZIL;
    $hgr=sprintf("\%.2f", $heroglobal);
    # print "Precise Bet Gain: $hgr\n";
if ($i22<$nwc-1)
{
print heroglobal "$heroglobal,";
}
else
{
print heroglobal "$heroglobal)\nhgmean <- mean(hg)\nhgzeroes <- length(which(hg==0))\nhgsd <- sd(hg)\nprint(length(hg))\nprint(hgmean)\nprint(hgsd)\nprint(hgzeroes)\n";
}
}
close(heroglobal);
print "INFO: Now run source(\"heroglobal.R\") in R\n";
