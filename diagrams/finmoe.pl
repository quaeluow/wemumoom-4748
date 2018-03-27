sub coo
{
    $res=1+(@_[0]*8);
}

$n=10;
open(finmoe,">./finmoe.asy");

print finmoe "size(400pt,400pt);\n";
print finmoe "real m=1;\n";
print finmoe "real n=1;\n";
print finmoe "real fl=-1;\n";
print finmoe "real fr=11;\n";
print finmoe "real fu=11;\n";
print finmoe "real fd=-1;\n";
print finmoe "path frame=((fl*m,fu*n)--(fr*m,fu*n)--(fr*m,fd*n)--(fl*m,fd*n)--cycle);\n";
print finmoe "draw(frame,linewidth(0));\n";
print finmoe "pen norma=linewidth(.5);\n";
print finmoe "pen strichliert=linewidth(.5)+dashed;\n";
print finmoe "pen bold=linewidth(1);\n";
print finmoe "pen punkt=linewidth(3);\n";

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
print finmoe "pair x$t1$t2=($i1*m,$i2*n);\n";
}
}

print finmoe "path yaxis=(x001000--x001010);\n";
print finmoe "path xaxis=(x000001--x010001);\n";
print finmoe "draw(xaxis,norma);\n";
print finmoe "draw(yaxis,norma);\n";
# print finmoe "label(\"\$y\$\",x001010,W);\n";
# print finmoe "label(\"\$x\$\",x010001,S);\n";
print finmoe "label(\"\$0\$\",x001001,SW);\n";

$xy1=&coo(1/2);
$xy2=&coo(1/6);
$zz1=&coo(2/3);
$zz2=&coo(1/2);
$juy=&coo(3/8);
$juz=&coo(1/8);
$lpuy=&coo(5/12);
$lpuz=&coo(1/12);
print finmoe "pair ju=($juy*m,$juz*n);\n";
print finmoe "pair jul=ju-(.25*m,-0.1*n);\n";
print finmoe "pair lpu=($lpuy*m,$lpuz*n);\n";
print finmoe "pair lpur=lpu+(.1*m,0*n);\n";
print finmoe "pair xy=($xy1*m,$xy2*n);\n";
print finmoe "pair xf=(1*m,$xy2*n);\n";
print finmoe "pair yf=($xy1*m,1*n);\n";
print finmoe "pair zy=(1*m,$zz2*n);\n";
print finmoe "pair zx=($zz2*m,1*n);\n";
print finmoe "pair xfh=.5*(xf+xy);\n";
print finmoe "pair yfh=.5*(yf+xy);\n";
print finmoe "pair zfh=.5*(x001009+zy);\n";
print finmoe "path ww=(zy--zx);\n";
print finmoe "path zz=(zy--x001009);\n";
print finmoe "path xx=(xf--xy);\n";
print finmoe "path yy=(yf--xy);\n";
print finmoe "path ju1=(xy--ju);\n";
print finmoe "path lpu1=(xy--lpu);\n";
print finmoe "path ju2=(ju--x001001);\n";
# print finmoe "draw(zz,bold);\n";
# print finmoe "draw(xx,bold);\n";
# print finmoe "draw(yy,bold);\n";
print finmoe "draw(ww,bold);\n";
print finmoe "draw(ju,punkt);\n";
print finmoe "draw(lpu,punkt);\n";
print finmoe "draw(xy,punkt);\n";
print finmoe "draw(zy,punkt);\n";
print finmoe "draw(zx,punkt);\n";
# print finmoe "draw(xf,punkt);\n";
# print finmoe "draw(yf,punkt);\n";
print finmoe "draw(x001009,punkt);\n";
# print finmoe "label(\"\$y\$\",xfh,N);\n";
# print finmoe "label(\"\$z\$\",yfh,E);\n";
print finmoe "label(\"\$x'\$\",zfh,W);\n";
# print finmoe "label(\"\$(0,1-x)\$\",zy,W);\n";
print finmoe "label(\"\$(y_{1}',z_{1}')\$\",jul,W);\n";
print finmoe "label(\"\$(y_{2}',z_{2}')\$\",lpur,E);\n";
print finmoe "label(\"\$(y,z)\$\",xy,E);\n";
print finmoe "label(\"\$(0,1)\$\",x001009,W);\n";
print finmoe "label(\"\$(1,0)\$\",x009001,S);\n";
print finmoe "path bnd=(x001009--x009001);\n";
print finmoe "draw(bnd,norma);\n";
print finmoe "draw(ju1,norma);\n";
print finmoe "draw(ju2,strichliert);\n";
print finmoe "draw(lpu1,norma);\n";

close(finmoe);
