function y = s1130(x)
y(1)=(x(1)*(-.65+x(1)+x(2)+x(3)+x(4)+x(5)+x(6)))-((.4-x(1)-x(4)-x(5))*((1/3)-x(1)-x(2)))
y(2)=(x(2)*(-.65+x(1)+x(2)+x(3)+x(4)+x(5)+x(6)))-((.3-x(2)-x(6))*((1/3)-x(1)-x(2)))
y(3)=(x(3)*(-.65+x(1)+x(2)+x(3)+x(4)+x(5)+x(6)))-((.2-x(3))*((1/6)-x(3)-x(4)))
y(4)=(x(4)*(-.65+x(1)+x(2)+x(3)+x(4)+x(5)+x(6)))-((.4-x(1)-x(4)-x(5))*((1/6)-x(3)-x(4)))
y(5)=(x(5)*(-.65+x(1)+x(2)+x(3)+x(4)+x(5)+x(6)))-((.4-x(1)-x(4)-x(5))*((1/4)-x(5)-x(6)))
y(6)=(x(6)*(-.65+x(1)+x(2)+x(3)+x(4)+x(5)+x(6)))-((.3-x(2)-x(6))*((1/4)-x(5)-x(6)))
endfunction

## for some reason, you have to pass the next line manually
## [x, info] = fsolve (@stefsolve, [.3;.3;.3])
## for q go to q.m
