use Math::CDF;
use Math::Trig;
$e=exp(1);
$pi=pi;
#setting how far bets are spread from ideal bets
$stdev=.4;
# projecting the unit interval onto the real line using f(x)=exp(x)/(1+exp(x))
# projecting the unit interval onto the real line using f(x)=tan(x)
# $pb=exp($t28)/(1+exp($t28));
$pb=tan(($pi*$t28)-($pi/2));
$t26=rand;
$t27=&Math::CDF::qnorm($t26);
$t31=($t27*$stdev)+$pb;
$t29=atan($t31);
$t30=((2*$t29)+$pi)/(2*$pi);
