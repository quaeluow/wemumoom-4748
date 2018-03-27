function x = twothree(y)
sot=2^.5;
aa=y(1)/sot;
## zz=(((y(1)/sot)-1)^2+((sot^2)/2)^2+1)^.5;
zz=sot*(((aa^2)-aa+1)^.5);
bb=y(2)/zz;
x=[(1-aa)*(1-bb),aa*(1-bb),bb];
endfunction
