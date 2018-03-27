function z=delta(x,y)
z=((x(1)*log(x(1)/y(1)))+(x(2)*log(x(2)/y(2)))+(x(3)*log(x(3)/y(3))))-((y(1)*log(y(1)/x(1)))+(y(2)*log(y(2)/x(2)))+(y(3)*log(y(3)/x(3))));
endfunction
