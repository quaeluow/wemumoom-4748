function y = s1133(x)
y(1)=(x(1)*(.6+x(1)+x(2)+x(3)))-((.4-x(1))*(.3-x(1)-x(2)))
y(2)=(x(2)*(.6+x(1)+x(2)+x(3)))-((.3-x(2))*(.3-x(1)-x(2)))
y(3)=(x(3)*(.6+x(1)+x(2)+x(3)))-((.2-x(3))*(.06-x(3)))
endfunction

## for some reason, you have to pass the next line manually
## [x, info] = fsolve (@s1133, [.3;.3;.3])
## for q go to q.m
