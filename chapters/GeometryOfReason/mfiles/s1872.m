a=[1/5;2/5;2/5]
b=[1/4;3/8;3/8]
dab=(b.*log(b./a));
sdab=sum(dab)
c=[3/10;7/20;7/20]
dbc=(c.*log(c./b));
sdbc=sum(dbc)
