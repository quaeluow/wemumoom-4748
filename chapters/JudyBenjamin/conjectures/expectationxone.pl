use Math::Cephes qw(:all);

print "Judy Benjamin. The expectation of X2 is n/2, the expectation of X3 is n.\n";
print "The expectation of X1 depends on both n and t, or s and t (n=ts).\n";
print "EX1=(s/2)*(t-sqrt(2)*((t**2-4)/t))\n";
print "We are interested in the factor T=t-sqrt(2)*((t**2-4)/t)\n";
for ($t=1;$t<=20;++$t)
{
    $T=$t-(sqrt(2)*((($t**2)-4)/$t));
    print "If t is $t the T is $T\n";
}
