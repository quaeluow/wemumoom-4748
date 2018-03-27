use Statistics::R;
# Create a communication bridge with R and start R
my $R = Statistics::R->new();
 
# Run simple R commands
# my $output_file = "file.ps";
# $R->run(qq`postscript("$output_file", horizontal=FALSE, width=500, height=500)`);
# $R->run(q`plot(c(1, 5, 10), type = "l")`);
# $R->run(q`dev.off()`);
 
# Pass and retrieve data (scalars or arrays)
# my $input_value = 1;
# $R->set('x', $input_value);
# $R->run(q`y <- x^2`);
# my $output_value = $R->get('y');
# print "y = $output_value\n";
# $R->stop();

$xa1=0.6;
$xa2=0.8;
$ya1=0.7;
$ya2=0.9;
$xb1=0.4;
$xb2=0.2;
$yb1=0.3;
$yb2=0.1;

sub dp
{
    $a=@_[0];
    $b=@_[1];
    $c=$b-$a;
}

sub rp
{
    $a=@_[0];
    $b=@_[1];
    $c=log($b/$a);
}

sub jp
{
    $a=@_[0];
    $b=@_[1];
    $c=($b/(1-$b))-($a/(1-$a));
}

sub lp
{
    $a=@_[0];
    $b=@_[1];
    $c=log(($b*(1-$a))/($a*(1-$b)));
}

sub gp
{
    $a=@_[0];
    $b=@_[1];
    $c=(1-$a)/(1-$b);
}

sub zp
{
    $a=@_[0];
    $b=@_[1];
if ($b<$a)
{
    $c=($b-$a)/$a;
}
else
{
    $c=($b-$a)/(1-$a);
}
}

sub ip
{
    $a=@_[0];
    $b=@_[1];
    $c=($b*log($b/$a))+((1-$b)*log((1-$b)/(1-$a)));
}


open(seven,">./seven.htm");
print seven "<html><head><title>Seven Confirmation Functions</title><body bgcolor=\"ffffff\" text=\"000000\"></head><body>";

print seven "Carnap (D)<p><table border=\"5\"><tr><td></td><th colspan=2><tt>z=0</tt></th><th colspan=2><tt>z=1</tt></th></tr>";
if (&dp($xb2,$xb1)**2<&dp($yb2,$yb1)**2)
{
    $clr1="red";
}
else
{
    $clr1="green";
}
if (&dp($ya1,$ya2)**2<&dp($xa1,$xa2)**2)
{
    $clr2="red";
}
else
{
    $clr2="green";
}
if (&dp($xb1,$xb2)**2<&dp($yb1,$yb2)**2)
{
    $clr3="red";
}
else
{
    $clr3="green";
}
if (&dp($ya2,$ya1)**2<&dp($xa2,$xa1)**2)
{
    $clr4="red";
}
else
{
    $clr4="green";
}
    $clr1="blue";
    $clr2="blue";
    $clr3="blue";
    $clr4="blue";
$r1=&dp($xb2,$xb1);
$r1=sprintf("\%.2f",$r1);
$r2=&dp($yb2,$yb1);
$r2=sprintf("\%.2f",$r2);
$r3=&dp($ya1,$ya2);
$r3=sprintf("\%.2f",$r3);
$r4=&dp($xa1,$xa2);
$r4=sprintf("\%.2f",$r4);
$r5=&dp($xb1,$xb2);
$r5=sprintf("\%.2f",$r5);
$r6=&dp($yb1,$yb2);
$r6=sprintf("\%.2f",$r6);
$r7=&dp($ya2,$ya1);
$r7=sprintf("\%.2f",$r7);
$r8=&dp($xa2,$xa1);
$r8=sprintf("\%.2f",$r8);
# print seven "<tr><td><tt>y>x</tt></td><td><tt><font color=\"$clr1\">&dp($xb2,$xb1)</font></tt></td><td><tt><font color=\"$clr1\">&dp($yb2,$yb1)</font></tt></td><td><tt><font color=\"$clr2\">&dp($ya1,$ya2)</font></tt></td><td><tt><font color=\"$clr2\">&dp($xa1,$xa2)</font></tt></td></tr>";
# print seven "<tr><td><tt>x>y</tt></td><td><tt><font color=\"$clr3\">&dp($xb1,$xb2)</font></tt></td><td><tt><font color=\"$clr3\">&dp($yb1,$yb2)</font></tt></td><td><tt><font color=\"$clr4\">&dp($ya2,$ya1)</font></tt></td><td><tt><font color=\"$clr4\">&dp($xa2,$xa1)</font></tt></td></tr>";
print seven "<tr><td><tt>y>x</tt></td><td><tt><font color=\"$clr1\">$r1</font></tt></td><td><tt><font color=\"$clr1\">$r2</font></tt></td><td><tt><font color=\"$clr2\">$r3</font></tt></td><td><tt><font color=\"$clr2\">$r4</font></tt></td></tr>";
print seven "<tr><td><tt>x>y</tt></td><td><tt><font color=\"$clr3\">$r5</font></tt></td><td><tt><font color=\"$clr3\">$r6</font></tt></td><td><tt><font color=\"$clr4\">$r7</font></tt></td><td><tt><font color=\"$clr4\">$r8</font></tt></td></tr>";
print seven "</table><p>";

print seven "Keynes (R)<p><table border=\"5\"><tr><td></td><th colspan=2><tt>z=0</tt></th><th colspan=2><tt>z=1</tt></th></tr>";
if (&rp($xb2,$xb1)**2<&rp($yb2,$yb1)**2)
{
    $clr1="red";
}
else
{
    $clr1="green";
}
if (&rp($ya1,$ya2)**2>&rp($xa1,$xa2)**2)
{
    $clr2="red";
}
else
{
    $clr2="green";
}
if (&rp($xb1,$xb2)**2<&rp($yb1,$yb2)**2)
{
    $clr3="red";
}
else
{
    $clr3="green";
}
if (&rp($ya2,$ya1)**2>&rp($xa2,$xa1)**2)
{
    $clr4="red";
}
else
{
    $clr4="green";
}
    # $hlrounded=sprintf("\%.2f", $herolocal);
$r1=&rp($xb2,$xb1);
$r1=sprintf("\%.2f",$r1);
$r2=&rp($yb2,$yb1);
$r2=sprintf("\%.2f",$r2);
$r3=&rp($ya1,$ya2);
$r3=sprintf("\%.2f",$r3);
$r4=&rp($xa1,$xa2);
$r4=sprintf("\%.2f",$r4);
$r5=&rp($xb1,$xb2);
$r5=sprintf("\%.2f",$r5);
$r6=&rp($yb1,$yb2);
$r6=sprintf("\%.2f",$r6);
$r7=&rp($ya2,$ya1);
$r7=sprintf("\%.2f",$r7);
$r8=&rp($xa2,$xa1);
$r8=sprintf("\%.2f",$r8);
# print seven "<tr><td><tt>y>x</tt></td><td><tt><font color=\"$clr1\">&rp($xb2,$xb1)</font></tt></td><td><tt><font color=\"$clr1\">&rp($yb2,$yb1)</font></tt></td><td><tt><font color=\"$clr2\">&rp($ya1,$ya2)</font></tt></td><td><tt><font color=\"$clr2\">&rp($xa1,$xa2)</font></tt></td></tr>";
# print seven "<tr><td><tt>x>y</tt></td><td><tt><font color=\"$clr3\">&rp($xb1,$xb2)</font></tt></td><td><tt><font color=\"$clr3\">&rp($yb1,$yb2)</font></tt></td><td><tt><font color=\"$clr4\">&rp($ya2,$ya1)</font></tt></td><td><tt><font color=\"$clr4\">&rp($xa2,$xa1)</font></tt></td></tr>";
print seven "<tr><td><tt>y>x</tt></td><td><tt><font color=\"$clr1\">$r1</font></tt></td><td><tt><font color=\"$clr1\">$r2</font></tt></td><td><tt><font color=\"$clr2\">$r3</font></tt></td><td><tt><font color=\"$clr2\">$r4</font></tt></td></tr>";
print seven "<tr><td><tt>x>y</tt></td><td><tt><font color=\"$clr3\">$r5</font></tt></td><td><tt><font color=\"$clr3\">$r6</font></tt></td><td><tt><font color=\"$clr4\">$r7</font></tt></td><td><tt><font color=\"$clr4\">$r8</font></tt></td></tr>";
print seven "</table><p>";

print seven "Festa (J)<p><table border=\"5\"><tr><td></td><th colspan=2><tt>z=0</tt></th><th colspan=2><tt>z=1</tt></th></tr>";
if (&jp($xb2,$xb1)**2<&jp($yb2,$yb1)**2)
{
    $clr1="red";
}
else
{
    $clr1="green";
}
if (&jp($ya1,$ya2)**2>&jp($xa1,$xa2)**2)
{
    $clr2="red";
}
else
{
    $clr2="green";
}
if (&jp($xb1,$xb2)**2<&jp($yb1,$yb2)**2)
{
    $clr3="red";
}
else
{
    $clr3="green";
}
if (&jp($ya2,$ya1)**2>&jp($xa2,$xa1)**2)
{
    $clr4="red";
}
else
{
    $clr4="green";
}
$r1=&jp($xb2,$xb1);
$r1=sprintf("\%.2f",$r1);
$r2=&jp($yb2,$yb1);
$r2=sprintf("\%.2f",$r2);
$r3=&jp($ya1,$ya2);
$r3=sprintf("\%.2f",$r3);
$r4=&jp($xa1,$xa2);
$r4=sprintf("\%.2f",$r4);
$r5=&jp($xb1,$xb2);
$r5=sprintf("\%.2f",$r5);
$r6=&jp($yb1,$yb2);
$r6=sprintf("\%.2f",$r6);
$r7=&jp($ya2,$ya1);
$r7=sprintf("\%.2f",$r7);
$r8=&jp($xa2,$xa1);
$r8=sprintf("\%.2f",$r8);
# print seven "<tr><td><tt>y>x</tt></td><td><tt><font color=\"$clr1\">&jp($xb2,$xb1)</font></tt></td><td><tt><font color=\"$clr1\">&jp($yb2,$yb1)</font></tt></td><td><tt><font color=\"$clr2\">&jp($ya1,$ya2)</font></tt></td><td><tt><font color=\"$clr2\">&jp($xa1,$xa2)</font></tt></td></tr>";
# print seven "<tr><td><tt>x>y</tt></td><td><tt><font color=\"$clr3\">&jp($xb1,$xb2)</font></tt></td><td><tt><font color=\"$clr3\">&jp($yb1,$yb2)</font></tt></td><td><tt><font color=\"$clr4\">&jp($ya2,$ya1)</font></tt></td><td><tt><font color=\"$clr4\">&jp($xa2,$xa1)</font></tt></td></tr>";
print seven "<tr><td><tt>y>x</tt></td><td><tt><font color=\"$clr1\">$r1</font></tt></td><td><tt><font color=\"$clr1\">$r2</font></tt></td><td><tt><font color=\"$clr2\">$r3</font></tt></td><td><tt><font color=\"$clr2\">$r4</font></tt></td></tr>";
print seven "<tr><td><tt>x>y</tt></td><td><tt><font color=\"$clr3\">$r5</font></tt></td><td><tt><font color=\"$clr3\">$r6</font></tt></td><td><tt><font color=\"$clr4\">$r7</font></tt></td><td><tt><font color=\"$clr4\">$r8</font></tt></td></tr>";
print seven "</table><p>";

print seven "Good (L)<p><table border=\"5\"><tr><td></td><th colspan=2><tt>z=0</tt></th><th colspan=2><tt>z=1</tt></th></tr>";
if (&lp($xb2,$xb1)**2<&lp($yb2,$yb1)**2)
{
    $clr1="red";
}
else
{
    $clr1="green";
}
if (&lp($ya1,$ya2)**2>&lp($xa1,$xa2)**2)
{
    $clr2="red";
}
else
{
    $clr2="green";
}
if (&lp($xb1,$xb2)**2<&lp($yb1,$yb2)**2)
{
    $clr3="red";
}
else
{
    $clr3="green";
}
if (&lp($ya2,$ya1)**2>&lp($xa2,$xa1)**2)
{
    $clr4="red";
}
else
{
    $clr4="green";
}
$r1=&lp($xb2,$xb1);
$r1=sprintf("\%.2f",$r1);
$r2=&lp($yb2,$yb1);
$r2=sprintf("\%.2f",$r2);
$r3=&lp($ya1,$ya2);
$r3=sprintf("\%.2f",$r3);
$r4=&lp($xa1,$xa2);
$r4=sprintf("\%.2f",$r4);
$r5=&lp($xb1,$xb2);
$r5=sprintf("\%.2f",$r5);
$r6=&lp($yb1,$yb2);
$r6=sprintf("\%.2f",$r6);
$r7=&lp($ya2,$ya1);
$r7=sprintf("\%.2f",$r7);
$r8=&lp($xa2,$xa1);
$r8=sprintf("\%.2f",$r8);
# print seven "<tr><td><tt>y>x</tt></td><td><tt><font color=\"$clr1\">&lp($xb2,$xb1)</font></tt></td><td><tt><font color=\"$clr1\">&lp($yb2,$yb1)</font></tt></td><td><tt><font color=\"$clr2\">&lp($ya1,$ya2)</font></tt></td><td><tt><font color=\"$clr2\">&lp($xa1,$xa2)</font></tt></td></tr>";
# print seven "<tr><td><tt>x>y</tt></td><td><tt><font color=\"$clr3\">&lp($xb1,$xb2)</font></tt></td><td><tt><font color=\"$clr3\">&lp($yb1,$yb2)</font></tt></td><td><tt><font color=\"$clr4\">&lp($ya2,$ya1)</font></tt></td><td><tt><font color=\"$clr4\">&lp($xa2,$xa1)</font></tt></td></tr>";
print seven "<tr><td><tt>y>x</tt></td><td><tt><font color=\"$clr1\">$r1</font></tt></td><td><tt><font color=\"$clr1\">$r2</font></tt></td><td><tt><font color=\"$clr2\">$r3</font></tt></td><td><tt><font color=\"$clr2\">$r4</font></tt></td></tr>";
print seven "<tr><td><tt>x>y</tt></td><td><tt><font color=\"$clr3\">$r5</font></tt></td><td><tt><font color=\"$clr3\">$r6</font></tt></td><td><tt><font color=\"$clr4\">$r7</font></tt></td><td><tt><font color=\"$clr4\">$r8</font></tt></td></tr>";
print seven "</table><p>";

print seven "Gaifman (G)<p><table border=\"5\"><tr><td></td><th colspan=2><tt>z=0</tt></th><th colspan=2><tt>z=1</tt></th></tr>";
if (&gp($xb2,$xb1)**2<&gp($yb2,$yb1)**2)
{
    $clr1="red";
}
else
{
    $clr1="green";
}
if (&gp($ya1,$ya2)**2>&gp($xa1,$xa2)**2)
{
    $clr2="red";
}
else
{
    $clr2="green";
}
if (&gp($xb1,$xb2)**2<&gp($yb1,$yb2)**2)
{
    $clr3="red";
}
else
{
    $clr3="green";
}
if (&gp($ya2,$ya1)**2>&gp($xa2,$xa1)**2)
{
    $clr4="red";
}
else
{
    $clr4="green";
}
$r1=&gp($xb2,$xb1);
$r1=sprintf("\%.2f",$r1);
$r2=&gp($yb2,$yb1);
$r2=sprintf("\%.2f",$r2);
$r3=&gp($ya1,$ya2);
$r3=sprintf("\%.2f",$r3);
$r4=&gp($xa1,$xa2);
$r4=sprintf("\%.2f",$r4);
$r5=&gp($xb1,$xb2);
$r5=sprintf("\%.2f",$r5);
$r6=&gp($yb1,$yb2);
$r6=sprintf("\%.2f",$r6);
$r7=&gp($ya2,$ya1);
$r7=sprintf("\%.2f",$r7);
$r8=&gp($xa2,$xa1);
$r8=sprintf("\%.2f",$r8);
# print seven "<tr><td><tt>y>x</tt></td><td><tt><font color=\"$clr1\">&gp($xb2,$xb1)</font></tt></td><td><tt><font color=\"$clr1\">&gp($yb2,$yb1)</font></tt></td><td><tt><font color=\"$clr2\">&gp($ya1,$ya2)</font></tt></td><td><tt><font color=\"$clr2\">&gp($xa1,$xa2)</font></tt></td></tr>";
# print seven "<tr><td><tt>x>y</tt></td><td><tt><font color=\"$clr3\">&gp($xb1,$xb2)</font></tt></td><td><tt><font color=\"$clr3\">&gp($yb1,$yb2)</font></tt></td><td><tt><font color=\"$clr4\">&gp($ya2,$ya1)</font></tt></td><td><tt><font color=\"$clr4\">&gp($xa2,$xa1)</font></tt></td></tr>";
print seven "<tr><td><tt>y>x</tt></td><td><tt><font color=\"$clr1\">$r1</font></tt></td><td><tt><font color=\"$clr1\">$r2</font></tt></td><td><tt><font color=\"$clr2\">$r3</font></tt></td><td><tt><font color=\"$clr2\">$r4</font></tt></td></tr>";
print seven "<tr><td><tt>x>y</tt></td><td><tt><font color=\"$clr3\">$r5</font></tt></td><td><tt><font color=\"$clr3\">$r6</font></tt></td><td><tt><font color=\"$clr4\">$r7</font></tt></td><td><tt><font color=\"$clr4\">$r8</font></tt></td></tr>";
print seven "</table><p>";

print seven "Crupi (Z)<p><table border=\"5\"><tr><td></td><th colspan=2><tt>z=0</tt></th><th colspan=2><tt>z=1</tt></th></tr>";
if (&zp($xb2,$xb1)**2<&zp($yb2,$yb1)**2)
{
    $clr1="red";
}
else
{
    $clr1="green";
}
if (&zp($ya1,$ya2)**2>&zp($xa1,$xa2)**2)
{
    $clr2="red";
}
else
{
    $clr2="green";
}
if (&zp($xb1,$xb2)**2<&zp($yb1,$yb2)**2)
{
    $clr3="red";
}
else
{
    $clr3="green";
}
if (&zp($ya2,$ya1)**2>&zp($xa2,$xa1)**2)
{
    $clr4="red";
}
else
{
    $clr4="green";
}
$r1=&zp($xb2,$xb1);
$r1=sprintf("\%.2f",$r1);
$r2=&zp($yb2,$yb1);
$r2=sprintf("\%.2f",$r2);
$r3=&zp($ya1,$ya2);
$r3=sprintf("\%.2f",$r3);
$r4=&zp($xa1,$xa2);
$r4=sprintf("\%.2f",$r4);
$r5=&zp($xb1,$xb2);
$r5=sprintf("\%.2f",$r5);
$r6=&zp($yb1,$yb2);
$r6=sprintf("\%.2f",$r6);
$r7=&zp($ya2,$ya1);
$r7=sprintf("\%.2f",$r7);
$r8=&zp($xa2,$xa1);
$r8=sprintf("\%.2f",$r8);
# print seven "<tr><td><tt>y>x</tt></td><td><tt><font color=\"$clr1\">&zp($xb2,$xb1)</font></tt></td><td><tt><font color=\"$clr1\">&zp($yb2,$yb1)</font></tt></td><td><tt><font color=\"$clr2\">&zp($ya1,$ya2)</font></tt></td><td><tt><font color=\"$clr2\">&zp($xa1,$xa2)</font></tt></td></tr>";
# print seven "<tr><td><tt>x>y</tt></td><td><tt><font color=\"$clr3\">&zp($xb1,$xb2)</font></tt></td><td><tt><font color=\"$clr3\">&zp($yb1,$yb2)</font></tt></td><td><tt><font color=\"$clr4\">&zp($ya2,$ya1)</font></tt></td><td><tt><font color=\"$clr4\">&zp($xa2,$xa1)</font></tt></td></tr>";
print seven "<tr><td><tt>y>x</tt></td><td><tt><font color=\"$clr1\">$r1</font></tt></td><td><tt><font color=\"$clr1\">$r2</font></tt></td><td><tt><font color=\"$clr2\">$r3</font></tt></td><td><tt><font color=\"$clr2\">$r4</font></tt></td></tr>";
print seven "<tr><td><tt>x>y</tt></td><td><tt><font color=\"$clr3\">$r5</font></tt></td><td><tt><font color=\"$clr3\">$r6</font></tt></td><td><tt><font color=\"$clr4\">$r7</font></tt></td><td><tt><font color=\"$clr4\">$r8</font></tt></td></tr>";
print seven "</table><p>";

print seven "Kullback-Leibler (I)<p><table border=\"5\"><tr><td></td><th colspan=2><tt>z=0</tt></th><th colspan=2><tt>z=1</tt></th></tr>";
if (&ip($xb2,$xb1)**2<&ip($yb2,$yb1)**2)
{
    $clr1="red";
}
else
{
    $clr1="green";
}
if (&ip($ya1,$ya2)**2>&ip($xa1,$xa2)**2)
{
    $clr2="red";
}
else
{
    $clr2="green";
}
if (&ip($xb1,$xb2)**2<&ip($yb1,$yb2)**2)
{
    $clr3="red";
}
else
{
    $clr3="green";
}
if (&ip($ya2,$ya1)**2>&ip($xa2,$xa1)**2)
{
    $clr4="red";
}
else
{
    $clr4="green";
}
$r1=&ip($xb2,$xb1);
$r1=sprintf("\%.2f",$r1);
$r2=&ip($yb2,$yb1);
$r2=sprintf("\%.2f",$r2);
$r3=&ip($ya1,$ya2);
$r3=sprintf("\%.2f",$r3);
$r4=&ip($xa1,$xa2);
$r4=sprintf("\%.2f",$r4);
$r5=&ip($xb1,$xb2);
$r5=sprintf("\%.2f",$r5);
$r6=&ip($yb1,$yb2);
$r6=sprintf("\%.2f",$r6);
$r7=&ip($ya2,$ya1);
$r7=sprintf("\%.2f",$r7);
$r8=&ip($xa2,$xa1);
$r8=sprintf("\%.2f",$r8);
# print seven "<tr><td><tt>y>x</tt></td><td><tt><font color=\"$clr1\">&ip($xb2,$xb1)</font></tt></td><td><tt><font color=\"$clr1\">&ip($yb2,$yb1)</font></tt></td><td><tt><font color=\"$clr2\">&ip($ya1,$ya2)</font></tt></td><td><tt><font color=\"$clr2\">&ip($xa1,$xa2)</font></tt></td></tr>";
# print seven "<tr><td><tt>x>y</tt></td><td><tt><font color=\"$clr3\">&ip($xb1,$xb2)</font></tt></td><td><tt><font color=\"$clr3\">&ip($yb1,$yb2)</font></tt></td><td><tt><font color=\"$clr4\">&ip($ya2,$ya1)</font></tt></td><td><tt><font color=\"$clr4\">&ip($xa2,$xa1)</font></tt></td></tr>";
print seven "<tr><td><tt>y>x</tt></td><td><tt><font color=\"$clr1\">$r1</font></tt></td><td><tt><font color=\"$clr1\">$r2</font></tt></td><td><tt><font color=\"$clr2\">$r3</font></tt></td><td><tt><font color=\"$clr2\">$r4</font></tt></td></tr>";
print seven "<tr><td><tt>x>y</tt></td><td><tt><font color=\"$clr3\">$r5</font></tt></td><td><tt><font color=\"$clr3\">$r6</font></tt></td><td><tt><font color=\"$clr4\">$r7</font></tt></td><td><tt><font color=\"$clr4\">$r8</font></tt></td></tr>";
print seven "</table><p>";

print seven "</body></html>";
close(seven);
print "Output is in seven.htm.\n";