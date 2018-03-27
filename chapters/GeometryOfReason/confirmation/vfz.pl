$n=30;
open(vfz,">./vfz.asy");

print vfz "size(600pt,600pt);\n";
print vfz "real m=1;\n";
print vfz "real n=1;\n";
print vfz "real fl=-1;\n";
print vfz "real fr=11;\n";
print vfz "real fu=11;\n";
print vfz "real fd=-1;\n";
print vfz "path frame=((fl*m,fu*n)--(fr*m,fu*n)--(fr*m,fd*n)--(fl*m,fd*n)--cycle);\n";
print vfz "draw(frame,linewidth(0));\n";
print vfz "pen norma=linewidth(.3);\n";

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
print vfz "pair x$t1$t2=($i1*m,$i2*n);\n";
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
    print vfz "path p$t1$t2=x$t1$t2--x$t1u$t2--x$t1u$t2r--x$t1$t2r--cycle;\n";
    print vfz "pair w$t1$t2=.25*(x$t1$t2+x$t1u$t2+x$t1u$t2r+x$t1$t2r);\n";
$x=(($j1/$n)+(.5*(1/$n)));
$y=(($j2/$n)+(.5*(1/$n)));
if (!($x>$y))
{
$fx=($y-1)/(($x-1)**2);
$fy=1/(($x-1));
}
else
{
$fx=(-$y)/(($x)**2);
$fy=1/$x;
}
$w=($fx**2+$fy**2)**.5;
$sc=.2;
$w=$w*$sc;
    print vfz "draw(w$t1$t2,linewidth($w));\n";
    print vfz "draw(p$t1$t2,norma);\n";
}
}

close(vfz);
