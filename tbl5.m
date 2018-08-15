//This script is for the KL_{1a} of Table 5. For the other Kummer
//Lines of the table, replace tha values of p, asq, bsq, xsq and zsq.

ZZ := Integers(); //prime
p := 2^266-3;//2^255-19;//2^251-9; //prime
Fp := GF(p);

asq := Fp!260;//Fp!82;//Fp!186;//Fp!81; //a^2 for KL
bsq := Fp!139;//Fp!77;//Fp!175;//Fp!20; //b^2 for KL

xsqKL := Fp!2;//Fp!19;//Fp!64; //x^2 of base point for KL
zsqKL := Fp!1;  //z^2 of base point for KL

mu := asq^2/(asq^2-bsq^2);

alpha0 := asq;
alpha1 := bsq;

X := alpha0*zsqKL;
t1 := alpha1*xsqKL;
Z := X-t1;

print "X := ",X;
print "Z := ",(ZZ!Z)-p;

xL := X/Z; //affine x-coordinate of corresponding Legendre curve
ysqL := xL*(xL-1)*(xL-mu); 
yL := Sqrt(ysqL);

print "nu := ", yL;
