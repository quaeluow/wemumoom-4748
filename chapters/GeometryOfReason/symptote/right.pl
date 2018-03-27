# see senkrecht.pl for automatization of drawing the threedim simplex

# I am now working on a new, better project called "right"
# for the difference, compare the diagrams in Schmierbuch, pp. 1502 and pp. 1505
# the output needs to be combined as in crj.sh

# THE OFFICIAL FILE IS NOW crj.sh WHICH BUILDS crj.asy USING crj.pl
# This perl file will generate the contour points for information theory
# for a diagram see Schmierbuch 1502

$its=15;
$nod=15;
$dd=.03;

$sot=2**(.5);

sub twothree
{
    $y1=@_[0];
    $y2=@_[1];
$aa=$y1/$sot;
$zz=$sot*((($aa**2)-$aa+1)**.5);
$bb=$y2/$zz;
@ttr=((1-$aa)*(1-$bb),$aa*(1-$bb),$bb);
    return @ttr;
}

$a1=0.82496;
$a2=0.20412;

# output of m1505.m
# f1 =
# 0.82496
# 1.28282
# f2 =
# 1.17851
# 0.40825
# f3 =
# 1.17851
# 0.00000
# f4 =
# 0.82496
# 0.00000
# f5 =
# 0.47140
# 0.00000
# f6 =
# 0.29463
# 0.51031

@effsx=(
"0.82496",
"1.17851",
"1.17851",
"0.82496",
"0.47140",
"0.29463"
    );

@effsy=(
"1.28282",
"0.40825",
"0.00000",
"0.00000",
"0.00000",
"0.51031"
    );

for ($i6=0;$i6<=$#effsy;++$i6)
{
    $df[$i6]=((($effsx[$i6]-$a1)**2)+(($effsy[$i6]-$a2)**2))**.5;
}
$mt=.5;
$ms=.1;

$dist[0]=$dd;

for ($i5=1;$i5<$nod;++$i5)
{
    $dist[$i5]=$dd+($i5*$dd);
}

open(jeff,">./horizon.asy");
# point A is (1/3,1/2,1/6) see octave functions threetwo and twothree for dimension conversions
$aa1=1/3;
$aa2=1/2;
$aa3=1/6;

my @m;
my @td;
for ($i1=0;$i1<=$#dist;++$i1)
{
for ($i2=0;$i2<=7;++$i2)
{
    undef(@td);
    undef(@m);
    $u=1/2;

for ($i4=0;$i4<$its;++$i4)
{
    $m[0]=((1-$u)*$a1)+($u*$effsx[$i2]);
    $m[1]=((1-$u)*$a2)+($u*$effsy[$i2]);
    @td=twothree($m[0],$m[1]);
    $dkl=($aa1*(log($aa1/$td[0])))+($aa2*(log($aa2/$td[1])))+($aa3*(log($aa3/$td[2])));
if ($dkl<$dist[$i1])
{
    $t1=$i4+2;
    $u=$u+(1/(2**$t1));
}
else 
{
    $t1=$i4+2;
    $u=$u-(1/(2**$t1));
}
}
$solx[$i1][$i2]=((1-$u)*$a1)+($u*$effsx[$i2]);
$soly[$i1][$i2]=((1-$u)*$a2)+($u*$effsy[$i2]);
print jeff "pair xx$i1$i2=x0000+($solx[$i1][$i2]*m*scl,$soly[$i1][$i2]*m*scl);\n";
}
for ($i7=0;$i7<=$#effsy;++$i7)
{
    # $t2[$i7]=0.75+(((($i1*$ms)+1)/$df[$i7])*$mt);
    $t2[$i7]=1;
}
print jeff "path xxx$i1=(xx${i1}0..xx${i1}1..xx${i1}2..xx${i1}3..tension 100 ..xx${i1}4..xx${i1}5..cycle);\n";
print jeff "draw (xxx$i1,norlin);\n";
}
