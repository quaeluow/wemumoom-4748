use Math::CDF;
use Math::Trig;
$e=exp(1);
$pi=pi;

#setting how far bets are spread from ideal bets
$stdev=.4;
$draws=0;
$heroglobal=0;

@gr=( "A", "B", "C", "D", "E", "F", "G", "H" );

@co=( "Brazil", "Croatia", "Mexico", "Cameroon", "Spain", "Netherlands", "Chile", "Australia", "Colombia", "Greece", "Ivory Coast", "Japan", "Costa Rica", "England", "Italy", "Uruguay", "Switzerland", "Ecuador", "France", "Honduras", "Argentina", "Bosnia", "Iran", "Nigeria", "Germany", "Portugal", "USA", "Ghana", "Belgium", "Algeria", "South Korea", "Russia" );

@cothree=( "BRA", "CRO", "MEX", "CAM", "ESP", "NLD", "CHL", "AUS", "COL", "GRE", "CIV", "JAP", "CRI", "ENG", "ITA", "URY", "SUI", "ECU", "FRA", "HON", "ARG", "BOS", "IRN", "NGA", "GER", "POR", "USA", "GHA", "BEL", "ALG", "SKR", "RUS" );

@ra=( "1241", "955", "930", "520", "1229", "1496", "1098", "397", "1492", "1091", "850", "604", "986", "911", "1056", "1330", "1216", "901", "1202", "637", "1606", "917", "563", "664", "1724", "1148", "989", "642", "1401", "872", "501", "897" );

sub evalbets
{
if ($W[0]>$W[1]+$imph)
{
    $stake=($W[0]-($W[1]+$imph))*100;
    $rate=$W[1]+$imph+(.5*($W[0]-($W[1]+$imph)));
if ($wyn==1)
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
elsif ($W[1]-$imph>$W[0])
{
    $stake=(-$W[0]+$W[1]-$imph)*100;
    $rate=$W[0]+(.5*(-$W[0]+$W[1]-$imph));
if ($wyn==1)
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
}
if ($L[0]>$L[1]+$imph)
{
    $stake=($L[0]-($L[1]+$imph))*100;
    $rate=$L[1]+$imph+(.5*($L[0]-($L[1]+$imph)));
if ($los==1)
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
elsif ($L[1]-$imph>$L[0])
{
    $stake=(-$L[0]+$L[1]-$imph)*100;
    $rate=$L[0]+(.5*(-$L[0]+$L[1]-$imph));
if ($los==1)
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
}
if ($D[0]>$D[1]+$imph)
{
    $stake=($D[0]-($D[1]+$imph))*100;
    $rate=$D[1]+$imph+(.5*($D[0]-($D[1]+$imph)));
if ($dro==1)
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
elsif ($D[1]-$imph>$D[0])
{
    $stake=(-$D[0]+$D[1]-$imph)*100;
    $rate=$D[0]+(.5*(-$D[0]+$D[1]-$imph));
if ($dro==1)
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
}
    $hlrounded=sprintf("\%.2f", $herolocal);
    $hgrounded=sprintf("\%.2f", $heroglobal);
}

sub scoring
{
$g3=rand;
$h3=0;
$t19=&Math::CDF::ppois($h3,$a1);
while ($g3>$t19)
{
    $h3=$h3+1;
    $t19=&Math::CDF::ppois($h3,$a1);
}

$g4=rand;
$h4=0;
$t20=&Math::CDF::ppois($h4,$a2);
while ($g4>$t20)
{
    $h4=$h4+1;
    $t20=&Math::CDF::ppois($h4,$a2);
}
$totalgls=$totalgls+$h3+$h4;
$totalgms=$totalgms+1;
}

sub betting
{
$t37=$t8*0.11594+1.31768; # reducing the spread of avgol for betting
$drawperc=0.2*(3.19008-$t37); # villains and heroes will use this for D
$bq=$a1/($a1+$a2);
$pbq=tan(($pi*$bq)-($pi/2));
undef(@bqt);
undef(@bqtrounded);
for ($i14=0;$i14<=1;++$i14)
{
$t26=rand;
$t27=&Math::CDF::qnorm($t26);
$t31=($t27*$stdev)+$pbq;
$t29=atan($t31);
$bqt[$i14]=((2*$t29)+$pi)/(2*$pi);
$bqtrounded[$i14]=sprintf("\%.2f", $bqt[$i14]);
$t35=rand;
$littlewiggle=$t35*.1;
$t36=rand;
if ($t36<.5)
{
    $D[$i14]=$drawperc-$littlewiggle;
}
else
{
    $D[$i14]=$drawperc+$littlewiggle;
}
$W[$i14]=(1-$D[$i14])*$bqt[$i14];
$L[$i14]=(1-$D[$i14])*(1-$bqt[$i14]);
$Dr[$i14]=sprintf("\%.2f", $D[$i14]);
$Wr[$i14]=sprintf("\%.2f", $W[$i14]);
$Lr[$i14]=sprintf("\%.2f", $L[$i14]);
}

# villainous imprecision
$t32=rand;
$t33=&Math::CDF::qnorm($t32);
$imp=($t33*0.1348014)+0.18; # these are the sample mean and stdev from Walley, page 634, for villains
if ($imp<0)
{
    $imp=0;
}
    $imph=$imp/2;
    $imphrounded=sprintf("\%.2f", $imph);

&scoring;

$t21=rand;
$herolocal=0;
if ($h3>$h4)
{
# WIN
    $wyn=1;
    $los=0;
    $dro=0;
    $winner=$contestant1;
    $col1="red";
    $col2="black";
}
elsif ($h3<$h4)
{
# LOSS
    $wyn=0;
    $los=1;
    $dro=0;
    $winner=$contestant2;
    $col2="red";
    $col1="black";
}
else
{
# DRAW
    $wyn=0;
    $los=0;
    $dro=1;
    $draws=$draws+1;
if ($t21<.5)
{
    $winner=$contestant1;
if ($v==0)
{
    $col1="red";
}
else
{
    $col1="black";
}
    $col2="black";
}
else
{
    $winner=$contestant2;
if ($v==0)
{
    $col2="red";
}
else
{
    $col2="black";
}
    $col1="black";
}
}

&evalbets
}

sub game
{
    $contestant1=$_[0];
    $contestant2=$_[1];
    $t24=0;
    $r1=$ra[$t24];
while ($contestant1 ne $co[$t24])
{
    $t24=$t24+1;
    $r1=$ra[$t24];
}
    $t25=0;
    $r2=$ra[$t25];
while ($contestant2 ne $co[$t25])
{
    $t25=$t25+1;
    $r2=$ra[$t25];
}
    $t7=$r1+$r2;
    $t8=&avgol($r1,$r2);
if ($t8<.2)
{
    $t8=.2;
}
    $a1=($r1*$t8)/$t7;
    $a2=($r2*$t8)/$t7;
&betting;
}

sub avgol
{
    $d=3;
    $b=($d-1)/(2*($max-$avg));
    $c=-1.4+(2*$b*$max);
    $a=.4;
    $result=($a*((abs($_[0]-$_[1])**3)**.1))-($b*($_[0]+$_[1]))+$c;
}

sub LETSGO
{
$totalgls=0;
$totalgms=0;

# finding out the average ranking
$t3=0;
for ($i5=0;$i5<=$#ra;++$i5)
{
    $t3=$t3+$ra[$i5];
}
$n=1+$#ra;
$avg=$t3/($n);
$max=1724;

# defining a subroutine for the average number of goals in a game using the two rankings
srand;
$v=1;
for ($i1=0;$i1<=7;++$i1)
{
    undef(@gols);
    undef(@pts);
    $t1=4*$i1;
for ($i2=0;$i2<=3;++$i2)
{
    $t2=$t1+$i2;
    $c[$i2]=$co[$t2];
    $r[$i2]=$ra[$t2];
}
for ($i3=0;$i3<=2;++$i3)
{
    $t12=$i3+1;
for ($i4=$t12;$i4<=3;++$i4)
{
    &game($c[$i3],$c[$i4]);
$gols[$i3]=$gols[$i3]+$h3-$h4;
$gols[$i4]=$gols[$i4]+$h4-$h3;
if ($h3>$h4)
{
    $pts[$i3]=$pts[$i3]+3;
}
elsif ($h3<$h4)
{
    $pts[$i4]=$pts[$i4]+3;
}
else
{
    $pts[$i3]=$pts[$i3]+1;
    $pts[$i4]=$pts[$i4]+1;
}
}
}
# writing out group standings
for ($i7=0;$i7<=3;++$i7)
{
    $t2=$t1+$i7;
    $cpts[$t2]=$pts[$i7];
    $cgol[$t2]=$gols[$i7];
    $t4=$gols[$i7]+500;
    $t5=$pts[$i7]+500;
    $gollz=sprintf("%04d",$t4);
    $ptslz=sprintf("%04d",$t5);
    $agg[$i7]=$gollz.";;".$ptslz.";;".$t2.";;".$c[$i7];
}
@sagg=reverse sort(@agg);
for ($i9=0;$i9<=$#sagg;++$i9)
{
    @t9=split(";;",$sagg[$i9]);
    $t13=rand;
    $bagg[$i9]=$t9[1].";;".$t9[0].";;".$t13.";;".$t9[2].";;".$t9[3];
}
@cagg=reverse sort(@bagg);

for ($i10=0;$i10<=3;++$i10)
{
    @t11=split(";;",$cagg[$i10]);
    $t10=$t11[1]-500;
    $t12=$t11[0]-500;
if ($i10<2)
{
    $t14=($i1*2)+$i10;
    $ros[$t14]=$t11[4];
}
else
{
}
}
}

@fin=( $ros[0], $ros[3], $ros[4], $ros[7], $ros[8], $ros[11], $ros[12], $ros[15], $ros[1], $ros[2], $ros[5], $ros[6], $ros[9], $ros[10], $ros[13], $ros[14] );

$v=0;
# Round of Sixteen
for ($i11=0;$i11<=7;++$i11)
{
    $t15=$i11*2;
    $t16=$i11*2+1;
    &game($fin[$t15],$fin[$t16]);
    $qrtf[$i11]=$winner;
}

# Quarter Final
for ($i12=0;$i12<=3;++$i12)
{
    $t22=$i12*2;
    $t23=$i12*2+1;
    &game($qrtf[$t22],$qrtf[$t23]);
    $semf[$i12]=$winner;
}

# Semifinal
for ($i13=0;$i13<=1;++$i13)
{
    $t22=$i13*2;
    $t23=$i13*2+1;
    &game($semf[$t22],$semf[$t23]);
    $final[$i13]=$winner;
}

# Final
&game($final[0],$final[1]);

$apg=$totalgls/$totalgms;
$pod=$draws/$totalgms;
$avted=$avte/$totalgms;
$apgrounded=sprintf("\%.2f", $apg);
$podrounded=sprintf("\%.4f", $pod);
}

print "How many World Cups? ";
$nwc = <STDIN>;
chomp($nwc);
open(heroglobal,">./heroglobal.R");
print heroglobal "hg <- c(";
for ($i22=0;$i22<$nwc;++$i22)
{
    $heroglobal=0;
    &LETSGO;
# print "$heroglobal\n";
if ($i22<$nwc-1)
{
print heroglobal "$heroglobal,";
}
else
{
print heroglobal "$heroglobal)\nhgmean <- mean(hg)\nhgse <- sd(hg)\nprint(hg)\nprint(hgmean)\nprint(hgse)\n";
}
}
close(heroglobal);
