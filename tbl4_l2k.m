Z := IntegerRing();
P<X,Z,u,a,b> := PolynomialRing(Z,5);

mu_num := a^4;
mu_den := a^4-b^4;

ysqL_num := X*(X-Z)*(X*mu_den-Z*mu_num);
ysqL_den := Z^3*mu_den;

X_num := ysqL_num*Z^3*mu_den^2 -(X-Z)*ysqL_den*(X*mu_den-Z*mu_num)^2;

X_den := ysqL_den*(X*mu_den-Z*mu_num)^2*Z;

x_num := b^2*X_num;
x_den := a^2*(X_num-X_den);

x:= x_num/x_den;

print "X:= ",Numerator(x);
print "Z:= ",Denominator(x);
