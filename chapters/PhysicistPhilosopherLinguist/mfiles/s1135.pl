sub transmat
{
    if ($oo1>.4) { $ooc[0]=1; } elsif ($oo1<.4) { $ooc[1]=-1; } else { $ooc[0]=0 }
    if ($oo2>.3) { $ooc[1]=1; } elsif ($oo2<.3) { $ooc[1]=-1; } else { $ooc[1]=0 }
    if ($oo3>.2) { $ooc[2]=1; } elsif ($oo3<.2) { $ooc[1]=-1; } else { $ooc[2]=0 }
    if ($oo4>.1) { $ooc[3]=1; } elsif ($oo4<.1) { $ooc[1]=-1; } else { $ooc[3]=0 }
    if ($th1>.3) { $thc[0]=1; } elsif ($th1<.3) { $thc[1]=-1; } else { $thc[0]=0 }
    if ($th2>.6) { $thc[1]=1; } elsif ($th2<.6) { $thc[1]=-1; } else { $thc[1]=0 }
$thc[2]=0;
    if ($th4>.06) { $thc[3]=1; } elsif ($th4<.06) { $thc[1]=-1; } else { $thc[3]=0 }

$pm11=$ooc[0]+$thc[0];
$pm12=$ooc[0]+$thc[1];
$pm21=$ooc[1]+$thc[0];
$pm22=$ooc[1]+$thc[1];
$pm32=$ooc[2]+$thc[1];
$pm34=$ooc[2]+$thc[3];
$pm41=$ooc[3]+$thc[0];
$pm42=$ooc[3]+$thc[1];
$pm44=$ooc[3]+$thc[3];

if ($pm11>0) { $s11=$s11-$d; } if ($pm11<0) { $s11=$s11+$d; }
if ($pm12>0) { $s12=$s12-$d; } if ($pm12<0) { $s12=$s12+$d; }
if ($pm21>0) { $s21=$s21-$d; } if ($pm21<0) { $s21=$s21+$d; }
if ($pm22>0) { $s22=$s22-$d; } if ($pm22<0) { $s22=$s22+$d; }
if ($pm32>0) { $s32=$s32-$d; } if ($pm32<0) { $s32=$s32+$d; }
if ($pm34>0) { $s34=$s34-$d; } if ($pm34<0) { $s34=$s34+$d; }
if ($pm41>0) { $s41=$s41-$d; } if ($pm41<0) { $s41=$s41+$d; }
if ($pm42>0) { $s42=$s42-$d; } if ($pm42<0) { $s42=$s42+$d; }
if ($pm44>0) { $s44=$s44-$d; } if ($pm44<0) { $s44=$s44+$d; }

$oo1=$s11+$s12;
$oo2=$s21+$s22;
$oo3=$s32+$s34;
$oo4=$s41+$s42+$s43+$s44;
$th1=$s11+$s21+$s41;
$th2=$s12+$s22+$s32+$s42;
$th3=.04;
$th4=$s34+$s44;
$sum=$th1+$th2+$th3+$th4;

print "$pm11\t $pm12\t $pm13\t $pm14\n";
print "$pm21\t $pm22\t $pm23\t $pm24\n";
print "$pm31\t $pm32\t $pm33\t $pm34\n";
print "$pm41\t $pm42\t $pm43\t $pm44\n\n";
print "$s11\t $s12\t $s13\t $s14\t $oo1\n";
print "$s21\t $s22\t $s23\t $s24\t $oo2\n";
print "$s31\t $s32\t $s33\t $s34\t $oo3\n";
print "$s41\t $s42\t $s43\t $s44\t $oo4\n";
print "$th1\t $th2\t $th3\t $th4\t $sum\n\n";
}

$d=-0.01;
$nor=1000;

$s11=.1;
$s12=.1;
$s21=.1;
$s22=.1;
$s32=.1;
$s34=.1;
$s41=.1;
$s42=.1;
$s44=.1;

$s33=0;
$s43=.04;
$s13=0;
$s14=0;
$s23=0;
$s24=0;
$s31=0;

$oo1=$s11+$s12;
$oo2=$s21+$s22;
$oo3=$s32+$s34;
$oo4=$s41+$s42+$s43+$s44;
$th1=$s11+$s21+$s41;
$th2=$s12+$s22+$s32+$s42;
$th3=.04;
$th4=$s34+$s44;

for ($i1=0;$i1<=$nor-1;++$i1)
{
    print "";
    $a=<STDIN>;
    &transmat;
}
