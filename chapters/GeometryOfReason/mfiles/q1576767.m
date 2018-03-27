s=0;
for i = 0:5
  x=binopdf(i,10,.5)*((i*150)-(6*75));
  s=s+x
endfor
for i = 6:10
  x=binopdf(i,10,.5)*(6*75);
  s=s+x
endfor
