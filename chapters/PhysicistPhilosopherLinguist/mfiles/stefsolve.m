## octave will solve this so that y=(0,0,0)
function y = stefsolve(x)
## function y = stefsolve(x)
## y(1)=(x(1)*(a3-b1-b2+x(1)+x(2)+x(3)))-((b1-x(1)-x(2))*(a1-x(1)))
## y(2)=(x(2)*(a3-b1-b2+x(1)+x(2)+x(3)))-((b1-x(1)-x(2))*(a2-x(2)-x(3)))
## y(3)=(x(3)*(a3-b1-b2+x(1)+x(2)+x(3)))-((b2-x(3))*(a2-x(2)-x(3)))
y(1)=(x(1)*(.4-.39-.35+x(1)+x(2)+x(3)))-((.39-x(1)-x(2))*(.25-x(1)))
y(2)=(x(2)*(.4-.39-.35+x(1)+x(2)+x(3)))-((.39-x(1)-x(2))*(.35-x(2)-x(3)))
y(3)=(x(3)*(.4-.39-.35+x(1)+x(2)+x(3)))-((.35-x(3))*(.35-x(2)-x(3)))
endfunction

## for some reason, you have to pass the next line manually
## in cygwin, I also had to pass the function line by line manually
## [x, info] = fsolve (@stefsolve, [.3;.3;.3])
## for q go to q.m
