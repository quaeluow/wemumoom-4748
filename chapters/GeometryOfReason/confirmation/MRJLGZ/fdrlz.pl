$n=30;
$c=0;
for ($l1=0;$l1<$n;++$l1)
{
for ($l2=0;$l2<$n;++$l2)
{
$x=($l1+.5)/$n;
$y=($l2+.5)/$n;
### F
# $z=log($y/(1-$y));
### M
# $z=$y-$x;
### J
# $z=($y/(1-$y))-($x/(1-$x));
### R
# $z=log($y/$x);
### L
# $z=log(($y*(1-$x))/((1-$y)*$x));
### G
# $z=log((1-$x)/(1-$y));
### Z
if ($x<$y)
{
    $z=($y-$x)/(1-$x);
}
else
{
    $z=($y-$x)/$x;
}
### I
# if ($y>$x)
# {
#     $sgn=1;
# }
# else
# {
#     $sgn=-1;
# }
# $z=$sgn*(($y*log($y/$x))+((1-$y)*log((1-$y)/(1-$x))));

# if ($x<$y)
# {
#     $z=($y-1)/((1-$x)**2);
# }
# else
# {
#     $z=1/(1-$x);
# }

if ($z>$c)
{
    $c=$z;
}
}
}
$maxz=$c;

open(fdrlz,">./fdrlz.asy");

print fdrlz "size(600pt,600pt);\n";
print fdrlz "real m=1;\n";
print fdrlz "real n=1;\n";
print fdrlz "real fl=-1;\n";
print fdrlz "real fr=11;\n";
print fdrlz "real fu=11;\n";
print fdrlz "real fd=-1;\n";
print fdrlz "path frame=((fl*m,fu*n)--(fr*m,fu*n)--(fr*m,fd*n)--(fl*m,fd*n)--cycle);\n";
print fdrlz "draw(frame,linewidth(0));\n";
print fdrlz "pen norma=linewidth(1);\n";

for ($i1=0;$i1<=$n;++$i1)
{
    if ($i1<10)
    {
	$t1="00".$i1;
    }
    elsif ($i1<100)
    {
	$t1="0".$i1;
    }
    else
    {
	$t1="$i1";
    }
for ($i2=0;$i2<=$n;++$i2)
{
    if ($i2<10)
    {
	$t2="00".$i2;
    }
    elsif ($i2<100)
    {
	$t2="0".$i2;
    }
    else
    {
	$t2="$i2";
    }
print fdrlz "pair x$t1$t2=($i1*m,$i2*n);\n";
}
}

for ($j1=0;$j1<$n;++$j1)
{
    $k1=$j1+1;
    if ($j1<10)
    {
	$t1="00".$j1;
if ($k1<10)
{
    $t1u="00".$k1;
}
else
{
    $t1u="0".$k1;
}    
    }
    elsif ($j1<100)
    {
	$t1="0".$j1;
if ($k1<100)
{
    $t1u="0".$k1;
}
else
{
    $t1u="$k1";
}    
    }
    else
    {
	$t1="$j1";
	$t1u="$k1";
    }
for ($j2=0;$j2<$n;++$j2)
{
    $k2=$j2+1;
    if ($j2<10)
    {
	$t2="00".$j2;
if ($k2<10)
{
    $t2r="00".$k2;
}
else
{
    $t2r="0".$k2;
}    
    }
    elsif ($j2<100)
    {
	$t2="0".$j2;
if ($k2<100)
{
    $t2r="0".$k2;
}
else
{
    $t2r="$k2";
}    
    }
    else
    {
	$t2="$j2";
	$t2r="$k2";
    }
$x=($j1+.5)/$n;
$y=($j2+.5)/$n;
### F F(x,y)=log(y/1-y)
# $z=log($y/(1-$y));
### M
# $z=$y-$x;
### J
# $z=($y/(1-$y))-($x/(1-$x));
### R
# $z=log($y/$x);
### L
# $z=log(($y*(1-$x))/((1-$y)*$x));
### G
# $z=log((1-$x)/(1-$y));
### Z
if ($x<$y)
{
    $z=($y-$x)/(1-$x);
}
else
{
    $z=($y-$x)/$x;
}
### I
# if ($y>$x)
# {
#     $sgn=1;
# }
# else
# {
#     $sgn=-1;
# }
# $z=$sgn*(($y*log($y/$x))+((1-$y)*log((1-$y)/(1-$x))));

# if ($x<$y)
# {
#     $z=($y-1)/((1-$x)**2);
# }
# else
# {
#     $z=1/(1-$x);
# }

$fc=0; # 0.2 for I; 0.25 for J;
if ($z<0)
{
    $tred=($z/$maxz)*(-1)*255;
    $tred=$tred+((255-$tred)*$fc);
    $red=sprintf("%.0f",$tred);    
    $green=255-$red;
    $blue=0;
}
else
{
    $tblue=($z/$maxz)*255;
    $tblue=$tblue+((255-$tblue)*$fc);
    $blue=sprintf("%.0f",$tblue);    
    $green=255-$blue;
    $red=0;
}
    print fdrlz "path p$t1$t2=x$t1$t2--x$t1u$t2--x$t1u$t2r--x$t1$t2r--cycle;\n";
    print fdrlz "pen farbe$t1$t2=rgb($red,$green,$blue);\n";
    print fdrlz "fill(p$t1$t2,farbe$t1$t2);\n";
    # print fdrlz "draw(p$t1$t2,norma);\n";
    # print fdrlz ";\n";
}
}

close(fdrlz);
