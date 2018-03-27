sub threetwo
{
    $a=@_[0];
    $b=@_[1];
    $c=@_[2];

    $u2=1+(($b/($b+$c))**2+(($c/($b+$c))**2));
    $v2=((1-($b/($b+$c)))**2)+(($c/($b+$c))**2);
    $u=$u2**.5;
    $v=$v2**.5;
    $psi=1-(((($u2)+($v2)-2)/(2*($u)*($v)))**2);
    $k2=(($a-1)**2)+($b**2)+($c**2);
    $m2=.5*($v2)*($psi)*($k2);
    $l2=$k2-$m2;
    $r1=$l2**.5;
    $r2=$m2**.5;
    @res=($r1,$r2);
}

sub dkl
{
    $a1=@_[0];
    $a2=@_[1];
    $a3=@_[2];
    $b1=@_[3];
    $b2=@_[4];
    $b3=@_[5];
    $dkl=$a1*(log($a1/$b1))+$a2*(log($a2/$b2))+$a3*(log($a3/$b3));
}

sub delta
{
    $a1=@_[0];
    $a2=@_[1];
    $a3=@_[2];
    $b1=@_[3];
    $b2=@_[4];
    $b3=@_[5];
    $delta=dkl($a1,$a2,$a3,$b1,$b2,$b3)-dkl($b1,$b2,$b3,$a1,$a2,$a3);
}

print "What is P? (e.g. 0.5,0.3,0.2) ";
$p=<stdin>;
chomp($p);
print "What is Q? (e.g. 0.4,0.2,0.4) ";
$q=<stdin>;
chomp($q);
@t1=split(",",$p);
$p1=$t1[0];
$p2=$t1[1];
$p3=$t1[2];
@t2=split(",",$q);
$q1=$t2[0];
$q2=$t2[1];
$q3=$t2[2];
print "$p1\t$p2\t$p3\t$q1\t$q2\t$q3\n";
$qp=dkl($q1,$q2,$q3,$p1,$p2,$p3);
$pq=dkl($p1,$p2,$p3,$q1,$q2,$q3);
$da=$pq-$qp;
print "dkl(Q,P) is $qp\tdkl(P,Q) is $pq\tdelta is $da\n";
