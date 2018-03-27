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

$string = '(a + b) * (c + d)';
@substring = extract_bracketed($string,"()");
print "$substring[1]\n";
