m=[1/3;1/3;1/3];
z=[0;1/4;3/4];
mu=3/8
h=mu.*(z.-m);
# ll=0.01:0.01:0.99;
for i = 1:99
ll=i/100;
# for mu>0
x=((1-ll).*m)+(ll.*(z.-h));
# for mu<0
# x=((1-ll).*(m.-h))+(ll.*z);
y=x.+h;
glm=(1+mu).*(z.-m).*(log(y./x)-(h./x));
sglm(i)=sum(glm);
endfor
t=0.01:0.01:0.99;
plot(t,sglm);
