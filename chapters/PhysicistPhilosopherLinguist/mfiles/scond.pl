# This perl program will draw a function graph for you in R

open(data,">./scond2.R");
print data "x=c(";

# Set these parameters
$xleft=0.001;
$xright=(1/45)-0.001;
$grain=500;

for ($i1=0;$i1<=$grain;++$i1)
{
    $x=$xleft+(($i1/$grain)*($xright-$xleft));
print data "$x";
unless ($i1==$grain)
{
print data ",";
}
}

print data ")\ny=c(";
for ($i2=0;$i2<=$grain;++$i2)
{
    $x=$xleft+(($i2/$grain)*($xright-$xleft));
# This is where the function goes
    # $y=(45/((45*$x)-1))-(1/$x)+((1/(1-(45*$x))^2)*((((45*$x)-1)*(10*log(2)))+(45*((log(2))-(10*$x*log(2))))));
    $y=log(1-(45*$x))-log(10*$x)+((log(2)-(10*$x*log(2)))/(1-(45*$x)));
print data "$y";
unless ($i2==$grain)
{
print data ",";
}
}

# print data ")\nplot(x,y,ylim=c(-1,1),xlab=\"\",ylab=\"\",type=\"l\",col=\"blue\")\ndev.print(device=jpeg, \"plotq.jpg\", width=600)";
print data ")\nplot(x,y,xlab=\"\",ylab=\"\",type=\"l\",col=\"blue\")\ndev.print(device=jpeg, \"plotq.jpg\", width=600)";
