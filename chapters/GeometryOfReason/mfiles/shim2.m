epsi=-.5;
x=(epsi+sqrt(4-(3*(epsi^2))))/(2-(2*epsi));
phi1=(((1/x)^2)+(1/x)+1)^(-1);
phi2=((1/x)+1+x)^(-1);
phi3=((x^2)+x+1)^(-1);
phi=[phi1;phi2;phi3];
phi
