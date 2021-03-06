use Math::CDF;
use Math::Trig;
$e=exp(1);
$pi=pi;

#setting how far bets are spread from ideal bets
$stdev=.4;
$draws=0;
$heroglobal=0;

open(soccer,">./soccer.htm");
open(debug,">./debug.data");
print debug "Checking in Line 13\n";
@gr=(
"A",
"B",
"C",
"D",
"E",
"F",
"G",
"H"
    );

@co=(
#A
"Brazil",
"Croatia",
"Mexico",
"Cameroon",

#B
"Spain",
"Netherlands",
"Chile",
"Australia",

#C
"Colombia",
"Greece",
"Ivory Coast",
"Japan",

#D
"Costa Rica",
"England",
"Italy",
"Uruguay",

#E
"Switzerland",
"Ecuador",
"France",
"Honduras",

#F
"Argentina",
"Bosnia",
"Iran",
"Nigeria",

#G
"Germany",
"Portugal",
"USA",
"Ghana",

#H
"Belgium",
"Algeria",
"South Korea",
"Russia"
    );

@cothree=(
"BRA",
"CRO",
"MEX",
"CAM",
"ESP",
"NLD",
"CHL",
"AUS",
"COL",
"GRE",
"CIV",
"JAP",
"CRI",
"ENG",
"ITA",
"URY",
"SUI",
"ECU",
"FRA",
"HON",
"ARG",
"BOS",
"IRN",
"NGA",
"GER",
"POR",
"USA",
"GHA",
"BEL",
"ALG",
"SKR",
"RUS"
    );

@ra=(
"1241",
"955",
"930",
"520",
"1229",
"1496",
"1098",
"397",
"1492",
"1091",
"850",
"604",
"986",
"911",
"1056",
"1330",
"1216",
"901",
"1202",
"637",
"1606",
"917",
"563",
"664",
"1724",
"1148",
"989",
"642",
"1401",
"872",
"501",
"897"
);

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

sub pline
{
    print soccer "<tr><td><tt><font color=\"$col1\">$_[0] ($r1)</font></tt></td><td><tt><font color=\"$col2\">$_[1] ($r2)</font></tt></td><td><tt><font color=\"blue\">$h3:$h4</font></tt></td><td><tt><b>H:</b> $Wr[0]:$Dr[0]:$Lr[0]</tt></td><td><tt><b>V:</b> $Wr[1]:$Dr[1]:$Lr[1] +/- $imphrounded</tt></td><td><tt><font color=\"green\">$hlrounded</font></tt></td></tr>";
}

sub betting
{
$t37=$t8*0.11594+1.31768; # reducing the spread of avgol for betting
$drawperc=0.2*(3.19008-$t37); # villains and heroes will use this for D
$bq=$a1/($a1+$a2);
# projecting the unit interval onto the real line using f(x)=exp(x)/(1+exp(x))
# projecting the unit interval onto the real line using f(x)=tan(x)
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
if ($W[0]>$W[1]+$imph)
{
    print "YES BET WH: $contestant1 vs. $contestant2\n";
    $stake=($W[0]-$W[1]+$imph)*100;
    print "$contestant1 $contestant2 $stake win\n";
    $heroglobal=$heroglobal+$stake;
    $herolocal=$herolocal+$stake;
}
elsif ($W[1]-$imph>$W[0])
{
    print "YES BET WV: $contestant1 vs. $contestant2\n";
    $stake=(-$W[0]+$W[1]-$imph)*100;
    print "$contestant1 $contestant2 $stake win\n";
    $heroglobal=$heroglobal-$stake;
    $herolocal=$herolocal-$stake;
}
else
{
    print "NO BET W: $contestant1 vs. $contestant2\n";
}
    $hlrounded=sprintf("\%.2f", $herolocal);
    $winner=$contestant1;
    $col1="red";
    $col2="black";
}
elsif ($h3<$h4)
{
# LOSS
if ($L[0]>$L[1]+$imph)
{
    print "YES BET LH: $contestant1 vs. $contestant2\n";
    $stake=($L[0]-$L[1]+$imph)*100;
    print "$contestant1 $contestant2 $stake loss\n";
    $heroglobal=$heroglobal+$stake;
    $herolocal=$herolocal+$stake;
}
elsif ($L[1]-$imph>$L[0])
{
    print "YES BET LV: $contestant1 vs. $contestant2\n";
    $stake=(-$L[0]+$L[1]-$imph)*100;
    print "$contestant1 $contestant2 $stake loss\n";
    $heroglobal=$heroglobal-$stake;
    $herolocal=$herolocal-$stake;
}
else
{
    print "NO BET L: $contestant1 vs. $contestant2\n";
}

    $winner=$contestant2;
    $col2="red";
    $col1="black";
}
else
{
# DRAW
if ($D[0]>$D[1]+$imph)
{
    print "YES BET DH: $contestant1 vs. $contestant2\n";
    $stake=($D[0]-$D[1]+$imph)*100;
    print "$contestant1 $contestant2 $stake HI draw\n";
    $heroglobal=$heroglobal+$stake;
    $herolocal=$herolocal+$stake;
}
elsif ($D[1]-$imph>$D[0])
{
    print "YES BET DV: $contestant1 vs. $contestant2\n";
    $stake=(-$D[0]+$D[1]-$imph)*100;
    print "$contestant1 $contestant2 $stake IH draw\n";
    $heroglobal=$heroglobal-$stake;
    $herolocal=$herolocal-$stake;
}
else
{
    print "NO BET D: $contestant1 vs. $contestant2\n";
}

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
}

sub game
{
print debug "Game: $totalgms\n";
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
    $a1=($r1*$t8)/$t7;
    $a2=($r2*$t8)/$t7;
&betting;
}

# Let's go
print debug "Checking in Line 336\n";
print soccer "<html><head><title>Brazil 2014</title></head><body><h1>Brazil 2014</h1><p>";
$totalgls=0;
$totalgms=0;

# finding out the average ranking
print debug "Checking in Line 342\n";
$t3=0;
for ($i5=0;$i5<=$#ra;++$i5)
{
    $t3=$t3+$ra[$i5];
}
$n=1+$#ra;
$avg=$t3/($n);
$max=1724;

# defining a subroutine for the average number of goals in a game using the two rankings
print debug "Checking in Line 353\n";
sub avgol
{
    $d=3;
    $b=($d-1)/(2*($max-$avg));
    $c=-1.4+(2*$b*$max);
    $a=.4;
    $result=($a*((abs($_[0]-$_[1])**3)**.1))-($b*($_[0]+$_[1]))+$c;
}

srand;
$v=1;
print debug "Checking in Line 365\n";
for ($i1=0;$i1<=7;++$i1)
{
    print soccer "<table>";
    undef(@gols);
    undef(@pts);
    print soccer "<tr><td><tt><b>Group $gr[$i1]</b></tt></td><td><tt></tt></td></tr>";
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
    &pline($c[$i3],$c[$i4]);
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
print soccer "</table><p><table border=\"5\">";
print debug "Checking in Line 405\n";
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
    # $bagg[$i9]=$t9[1].";;".$t9[2].";;".$t9[3].";;".$t10;
    $t13=rand;
    $bagg[$i9]=$t9[1].";;".$t9[0].";;".$t13.";;".$t9[2].";;".$t9[3];
}
@cagg=reverse sort(@bagg);

print debug "Checking in Line 427\n";
for ($i10=0;$i10<=3;++$i10)
{
    @t11=split(";;",$cagg[$i10]);
    $t10=$t11[1]-500;
    $t12=$t11[0]-500;
if ($i10<2)
{
    # print soccer "<tr><td><tt><font color=\"red\">$t11[4]</font></tt></td><td><tt><font color=\"red\">$t12</font></tt></td><td><tt><font color=\"red\">$t10</font></tt></td><td>$cagg[$i10]</td></tr>";
    print soccer "<tr><td><tt><font color=\"red\">$t11[4]</font></tt></td><td><tt><font color=\"red\">$t12</font></tt></td><td><tt><font color=\"red\">$t10</font></tt></td></tr>";
    $t14=($i1*2)+$i10;
    $ros[$t14]=$t11[4];
}
else
{
    # print soccer "<tr><td><tt>$t11[4]</tt></td><td><tt>$t12</tt></td><td><tt>$t10</tt></td><td>$cagg[$i10]</td></tr>";
    print soccer "<tr><td><tt>$t11[4]</tt></td><td><tt>$t12</tt></td><td><tt>$t10</tt></td></tr>";
}
}
    print soccer "</table><p>";
}

print soccer "<h3><tt>Round of Sixteen</tt></h3><p><table>";
@fin=(
$ros[0],
$ros[3],
$ros[4],
$ros[7],
$ros[8],
$ros[11],
$ros[12],
$ros[15],
$ros[1],
$ros[2],
$ros[5],
$ros[6],
$ros[9],
$ros[10],
$ros[13],
$ros[14]
    );

$v=0;
# Round of Sixteen
print debug "Checking in Line 471\n";
for ($i11=0;$i11<=7;++$i11)
{
    $t15=$i11*2;
    $t16=$i11*2+1;
    &game($fin[$t15],$fin[$t16]);
    $qrtf[$i11]=$winner;
    &pline($fin[$t15],$fin[$t16]);
}
print soccer "</table><p>";

# Quarter Final
print debug "Checking in Line 483\n";
print soccer "<h3><tt>Quarter Final</tt></h3><p><table>";
for ($i12=0;$i12<=3;++$i12)
{
    $t22=$i12*2;
    $t23=$i12*2+1;
    &game($qrtf[$t22],$qrtf[$t23]);
    $semf[$i12]=$winner;
    &pline($qrtf[$t22],$qrtf[$t23]);
}
print soccer "</table><p>";

# Semifinal
print debug "Checking in Line 496\n";
print soccer "<h3><tt>Semifinal</tt></h3><p><table>";
for ($i13=0;$i13<=1;++$i13)
{
    $t22=$i13*2;
    $t23=$i13*2+1;
    &game($semf[$t22],$semf[$t23]);
    $final[$i13]=$winner;
    &pline($semf[$t22],$semf[$t23]);
}
print soccer "</table><p>";

# Final
print debug "Checking in Line 509\n";
print soccer "<h3><tt>Final</tt></h3><p><table>";
&game($final[0],$final[1]);
&pline($final[0],$final[1]);
print soccer "</table><p>";
print soccer "<tt>World Cup Winner 2014: <b>$winner.</b></tt><p>";

$apg=$totalgls/$totalgms;
$pod=$draws/$totalgms;
$avted=$avte/$totalgms;
$apgrounded=sprintf("\%.2f", $apg);
$podrounded=sprintf("\%.4f", $pod);
print soccer "</table><p><tt>Average goals per game: $apgrounded.</tt><p>";
print soccer "<tt>Percentage of draws: $podrounded.</tt><p>";
print soccer "<tt>Hero Total: <b>$herototal</b>.</tt><p>";
print soccer "</body></html>";
close(soccer);
