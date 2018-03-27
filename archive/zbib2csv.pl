use Text::Balanced qw (
                        extract_delimited
                        extract_bracketed
                        extract_quotelike
                        extract_codeblock
                        extract_variable
                        extract_tagged
                        extract_multiple
                        gen_delimited_pat
                        gen_extract_tagged
                       );

@field=( 
"author",
"title",
"year",
"journal",
"address",
"publisher",
"number",
"volume",
"pages",
"stefancomment",
"booktitle",
"editor",
"pdfconv"
);

print "INFO: Make sure that inbib.bib is left-aligned (Ctrl-u 0 Ctrl-Alt-\\)\n";
print "INFO: Make sure to replace umlauts before bibbing\n";
# table:
# {\"a} -> xax etc.
# {\o}  -> yoy
# {\'a} -> yay
# {\'e} -> yey
# {\`a} -> zaz
# {\`e} -> zez
# {\ss} -> xsx
# {\c{c}} -> xcx
# {\c{s}} -> zsz
# \& -> xpx

open(bibdata,"<./inbib.bib");
@bibdata=<bibdata>;
close(bibdata);
foreach $bibdata (@bibdata)
{
    chomp($bibdata);
}
open(csvdata,">./outbib.csv");
print csvdata "identifier,type,";
for ($i11=0;$i11<=$#field;++$i11)
{
    print csvdata "$field[$i11],";
}
    print csvdata "\n";
for ($i1=0;$i1<=$#bibdata;++$i1)
{

if ($bibdata[$i1]=~m/^\@/)
{
@t1=split("{",$bibdata[$i1]);
@t2=split(",",$t1[1]);
$identifier=$t2[0];
@t3=split("\@",$t1[0]);
$type=$t3[1];
}

if ($bibdata[$i1]=~m/=/)
{
for ($i2=0;$i2<=$#field;++$i2)
{
if ($bibdata[$i1]=~m/^$field[$i2]/)
{
@t3=split("=",$bibdata[$i1]);
@t4 = extract_bracketed($t3[1],"{}");
$lmo=length($t4[0])-2;
$record[$i2]=substr($t4[0],1,$lmo);
}
}
}

if ($bibdata[$i1] eq "}")
{
# print "INFO: recording $identifier ...\n";
print csvdata "$identifier,$type,";
for ($i3=0;$i3<=$#field;++$i3)
{
print csvdata "\"$record[$i3]\",";
}
print csvdata "\n";
undef(@record);
}

}
