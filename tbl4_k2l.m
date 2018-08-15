Z := IntegerRing();
P<x,z,u,a,b> := PolynomialRing(Z,5);

xL := a^2*x^2;
zL := a^2*x^2-b^2*z^2;

mu_num := a^4;
mu_den := a^4-b^4;

ysqL_num := xL*(xL-zL)*(xL*mu_den-zL*mu_num);
ysqL_den := zL^3*mu_den;

X_num := ysqL_num*zL^3*mu_den^2 -(xL-zL)*ysqL_den*(xL*mu_den-zL*mu_num)^2;

X_den := ysqL_den*(xL*mu_den-zL*mu_num)^2*zL;

X := X_num/X_den;

print "X:= ",-Numerator(X);
print "Z:= ",-Denominator(X);
