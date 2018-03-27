sub coo
{
    $res=1+(@_[0]*8);
}

$n=10;
open(finmod,">./finmod.asy");

print finmod "size(400pt,400pt);\n";
print finmod "real m=1;\n";
print finmod "real n=1;\n";
print finmod "real fl=-1;\n";
print finmod "real fr=11;\n";
print finmod "real fu=11;\n";
print finmod "real fd=-1;\n";
print finmod "path frame=((fl*m,fu*n)--(fr*m,fu*n)--(fr*m,fd*n)--(fl*m,fd*n)--cycle);\n";
print finmod "draw(frame,linewidth(0));\n";
print finmod "pen norma=linewidth(.5);\n";
print finmod "pen bold=linewidth(1);\n";
print finmod "pen punkt=linewidth(3);\n";

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
print finmod "pair x$t1$t2=($i1*m,$i2*n);\n";
}
}

print finmod "path yaxis=(x001000--x001010);\n";
print finmod "path xaxis=(x000001--x010001);\n";
print finmod "draw(xaxis,norma);\n";
print finmod "draw(yaxis,norma);\n";
# print finmod "label(\"\$y\$\",x001010,W);\n";
# print finmod "label(\"\$x\$\",x010001,S);\n";
print finmod "label(\"\$0\$\",x001001,SW);\n";

$xy1=&coo(1/2);
$xy2=&coo(1/6);
$zz1=&coo(2/3);
print finmod "pair xy=($xy1*m,$xy2*n);\n";
print finmod "pair xf=(1*m,$xy2*n);\n";
print finmod "pair yf=($xy1*m,1*n);\n";
print finmod "pair zy=(1*m,$zz1*n);\n";
print finmod "pair zx=($zz1*m,1*n);\n";
print finmod "pair xfh=.5*(xf+xy);\n";
print finmod "pair yfh=.5*(yf+xy);\n";
print finmod "pair zfh=.5*(x001009+zy);\n";
print finmod "path ww=(zy--zx);\n";
print finmod "path zz=(zy--x001009);\n";
print finmod "path xx=(xf--xy);\n";
print finmod "path yy=(yf--xy);\n";
print finmod "draw(zz,bold);\n";
print finmod "draw(xx,bold);\n";
print finmod "draw(yy,bold);\n";
print finmod "draw(ww,norma);\n";
print finmod "draw(xy,punkt);\n";
print finmod "draw(zy,punkt);\n";
print finmod "draw(xf,punkt);\n";
print finmod "draw(yf,punkt);\n";
print finmod "draw(x001009,punkt);\n";
print finmod "label(\"\$y\$\",xfh,N);\n";
print finmod "label(\"\$z\$\",yfh,E);\n";
print finmod "label(\"\$x\$\",zfh,W);\n";
print finmod "label(\"\$(0,y+z)\$\",zy,W);\n";
print finmod "label(\"\$(y,z)\$\",xy,E);\n";
print finmod "label(\"\$(0,1)\$\",x001009,W);\n";
print finmod "label(\"\$(1,0)\$\",x009001,S);\n";
print finmod "path bnd=(x001009--x009001);\n";
print finmod "draw(bnd,norma);\n";

close(finmod);
