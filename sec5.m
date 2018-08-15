ZZ := IntegerRing();
p := 2^266-3;//2^255-19;//2^251-9;
Fp := GF(p);

asq := Fp!260;//Fp!82;//Fp!186;//Fp!81;//a^2 of base point for KL
bsq := Fp!139;//Fp!77;//Fp!175;//Fp!20;//b^2 of base point for KL

xsqKL := Fp!2;//Fp!31;//Fp!64; //x^2 of base point for KL
zsqKL := Fp!1;  //z^2 of base point for KL


mu := asq^2/(asq^2-bsq^2);

alpha0 := asq^2*bsq;
alpha1 := asq*bsq^2;

X := alpha0*zsqKL;
t1 := alpha1*xsqKL;
Z := X-t1;
xL := X/Z;
ysqL := xL*(xL-1)*(xL-mu); 
yL := Sqrt(ysqL); print "yL := ",yL;



print "======================";
print "Method 1";
print "======================";

print "Case: x2=0";
x2:=Fp!0;
x1con := mu;
if JacobiSymbol(ZZ!x1con,p) eq -1 then
	print "No solution as mu is quadration no residue";
elif JacobiSymbol(ZZ!x1con,p) eq 0 then 
	print "No solution as mu is zero";
elif JacobiSymbol(ZZ!x1con,p) eq 1 then
	x1 := Sqrt(mu);
	y1sq := -mu^2 + 2*(Sqrt(mu))^3-mu;
	if JacobiSymbol(ZZ!y1sq,p) eq -1 then
		print "No solution of y1 for x1 = Sqrt(mu)";
	elif JacobiSymbol(ZZ!y1sq,p) eq 0 then 
		print "No solution of y1 for x1 = Sqrt(mu)";
	elif JacobiSymbol(ZZ!y1sq,p) eq 1 then 
		print "Solution of y1 for x1 = 1+Sqrt(1-mu)";
		y1 := Sqrt(y1sq);
		pt4 := [x1,y1];
		print "Point of order 4: ",pt4;
		theta := 1-4*(x1-x2)^3/y1sq;
		if (JacobiSymbol(ZZ!theta,p) eq -1) and (JacobiSymbol(-1,p) eq -1) then
			print "Solution";
			print Sqrt(-4*theta);
		else
			print "No Solution";
			print "JacobiSymbol(theta,p) = ",JacobiSymbol(ZZ!theta,p);
			print "JacobiSymbol(-1,p) = ",JacobiSymbol(ZZ!p-1,p);
		end if;
	end if;
	x1 := -Sqrt(mu);
	y1sq := -mu^2 - 2*(Sqrt(mu))^3-mu;
	if JacobiSymbol(ZZ!y1sq,p) eq -1 then
		print "No solution of y1 for x1 = -Sqrt(mu)";
	elif JacobiSymbol(ZZ!y1sq,p) eq 0 then 
		print "No solution of y1 for x1 = -Sqrt(mu)";
	elif JacobiSymbol(ZZ!y1sq,p) eq 1 then 
		print "Solution of y1 for x1 = 1+Sqrt(1-mu)";
		y1 := Sqrt(y1sq);
		pt4 := [x1,y1];
		print "Point of order 4: ",pt4;
		theta := 1-4*(x1-x2)^3/y1sq;
		if (JacobiSymbol(ZZ!theta,p) eq -1) and (JacobiSymbol(-1,p) eq -1) then
			print "Solution";
			print Sqrt(-4*theta);
		else
			print "No Solution";
			print "JacobiSymbol(theta,p) = ",JacobiSymbol(ZZ!theta,p);
			print "JacobiSymbol(-1,p) = ",JacobiSymbol(ZZ!p-1,p);
		end if;
	end if;

end if;

print "Case: x2=1";
x2:=Fp!1;
x1con := 1-mu;
if JacobiSymbol(ZZ!x1con,p) eq -1 then
	print "No solution as (1-mu) is quadration no residue";
elif JacobiSymbol(ZZ!x1con,p) eq 0 then 
	print "No solutionas (1-mu) is 0";
elif JacobiSymbol(ZZ!x1con,p) eq 1 then 
	x1 := 1+Sqrt(x1con);
	y1sq := (-1+mu-Sqrt(1-mu))^2;
	if JacobiSymbol(ZZ!y1sq,p) eq -1 then
		print "No solution of y1 for x1 = 1+Sqrt(1-mu)";
	elif JacobiSymbol(ZZ!y1sq,p) eq 0 then 
		print "No solution of y1 for x1 = 1+Sqrt(1-mu)";
	elif JacobiSymbol(ZZ!y1sq,p) eq 1 then 
		print "Solution of y1 for x1 = 1+Sqrt(1-mu)";
		y1 := Sqrt(y1sq);
		pt4 := [x1,y1];
		print "Point of order 4: ",pt4;
		theta := 1-4*(x1-x2)^3/y1sq;
		if (JacobiSymbol(ZZ!theta,p) eq -1) and (JacobiSymbol(-1,p) eq -1) then
			print "Solution";
			print Sqrt(-4*theta);
		else
			print "No Solution";
			print "JacobiSymbol(theta,p) = ",JacobiSymbol(ZZ!theta,p);
			print "JacobiSymbol(-1,p) = ",JacobiSymbol(ZZ!p-1,p);
		end if;
	end if;
	x1 := 1-Sqrt(x1con);
	y1sq := (-1+mu+Sqrt(1-mu))^2;
	if JacobiSymbol(ZZ!y1sq,p) eq -1 then
		print "No solution of y1 for x1 = 1-Sqrt(1-mu)";
	elif JacobiSymbol(ZZ!y1sq,p) eq 0 then 
		print "No solution of y1 for x1 = 1-Sqrt(1-mu)";
	elif JacobiSymbol(ZZ!y1sq,p) eq 1 then 
		print "Solution of y1 for x1 = 1-Sqrt(1-mu)";
		y1 := Sqrt(y1sq);
		pt4 := [x1,y1];
		print "Point of order 4: ",pt4;
		theta := 1-4*(x1-x2)^3/y1sq;
		if (JacobiSymbol(ZZ!theta,p) eq -1) and (JacobiSymbol(ZZ!p-1,p) eq -1) then
			print "Solution";
		else
			print "No Solution";
			print "JacobiSymbol(theta,p) = ",JacobiSymbol(ZZ!theta,p);
			print "JacobiSymbol(-1,p) = ",JacobiSymbol(ZZ!p-1,p);
		end if;
	end if;
end if;

print "Case: x2=mu";
x2:=Fp!mu;
x1con := mu^2-mu;
if JacobiSymbol(ZZ!x1con,p) eq -1 then
	print "No solution as (mu^2-mu) is quadration no residue";
elif JacobiSymbol(ZZ!x1con,p) eq 0 then 
	print "No solutionas (mu^2-mu) is 0";
elif JacobiSymbol(ZZ!x1con,p) eq 1 then 
	x1 := mu+Sqrt(x1con);
	y1sq := 2*mu^3+2*mu^2*Sqrt(x1con)-3*mu^2-2*mu*Sqrt(x1con)+mu;
	if JacobiSymbol(ZZ!y1sq,p) eq -1 then
		print "No solution of y1 for x1 = mu+Sqrt(mu^2-mu)";
	elif JacobiSymbol(ZZ!y1sq,p) eq 0 then 
		print "No solution of y1 for x1 = mu+Sqrt(mu^2-mu)";
	elif JacobiSymbol(ZZ!y1sq,p) eq 1 then 
		print "Solution of y1 for x1 = mu+Sqrt(mu^2-mu)";
		y1 := Sqrt(y1sq);
		pt4 := [x1,y1];
		print "Point of order 4: ",pt4;
		theta := 1-4*(x1-x2)^3/y1^2;
		if (JacobiSymbol(ZZ!theta,p) eq -1) and (JacobiSymbol(ZZ!p-1,p) eq -1) then
			print "Solution";
		else
			print "No Solution";
			print "JacobiSymbol(theta,p) = ",JacobiSymbol(ZZ!theta,p);
			print "JacobiSymbol(-1,p) = ",JacobiSymbol(ZZ!p-1,p);
		end if;
	end if;
	x1 := mu-Sqrt(x1con);
	y1sq := 2*mu^3-2*mu^2*Sqrt(x1con)-3*mu^2+2*mu*Sqrt(x1con)+mu;
	if JacobiSymbol(ZZ!y1sq,p) eq -1 then
		print "No solution of y1 for x1 = mu-Sqrt(mu^2-mu)";
	elif JacobiSymbol(ZZ!y1sq,p) eq 0 then 
		print "No solution of y1 for x1 = mu-Sqrt(mu^2-mu)";
	elif JacobiSymbol(ZZ!y1sq,p) eq 1 then 
		print "Solution of y1 for x1 = mu-Sqrt(mu^2-mu)";
		y1 := Sqrt(y1sq);
		pt4 := [x1,y1];
		print "Point of order 4: ",pt4;
		theta := 1-4*(x1-x2)^3/y1^2;
		if (JacobiSymbol(ZZ!theta,p) eq -1) and (JacobiSymbol(ZZ!p-1,p) eq -1) then
			print "Solution";
		else
			print "No Solution";
			print "JacobiSymbol(theta,p) = ",JacobiSymbol(ZZ!theta,p);
			print "JacobiSymbol(-1,p) = ",JacobiSymbol(ZZ!p-1,p);
		end if;
	end if;
end if;


print "======================";
print "Method 2";
print "======================";

om := (mu+1)/3;
a := mu - 3*om^2;
b := om^3 + om*(mu-2*om^2);

print "Case: al=-om";
al:=-om;
csq := 3*al^2+a;
if JacobiSymbol(ZZ!csq,p) eq -1 then
	print "No solution as csq is quadration no residue";
elif JacobiSymbol(ZZ!csq,p) eq 0 then 
	print "No solutionas csq is 0";
elif JacobiSymbol(ZZ!csq,p) eq 1 then 
	c := 1/Sqrt(csq);
	ap := (3*al*c+2)/c;
	dp := (3*al*c-2)/c;
	if JacobiSymbol(ZZ!ap,p) eq JacobiSymbol(-1,p) then 
		d:= (2-3*al*c)/(2+3*al*c);
		print "d := ",d;
		bp := Sqrt(-ap);
		u := bp*(xL-om-al)/yL; print "u := ",u;
		v := (c*(xL-om-al)-1)/(c*(xL-om-al)+1); print "v := ",v;
	elif (JacobiSymbol(ZZ!ap,p) ne JacobiSymbol(-1,p)) and (JacobiSymbol(ZZ!dp,p) eq JacobiSymbol(-1,p)) then
		d:= (2+3*al*c)/(2-3*al*c);
		bp := Sqrt(-ap);
		u := bp*(xL-om-al)/yL; print "u := ",u;
		v := (c*(xL-om-al)-1)/(c*(xL-om-al)+1); print "v := ",v;
		print "d := ",d;
	else 
		print "No solution because ap and bp are both quadratic residue";
	end if;
	c := -1/Sqrt(csq);
	ap := (3*al*c+2)/c;
	dp := (3*al*c-2)/c;
	if JacobiSymbol(ZZ!ap,p) eq JacobiSymbol(-1,p) then 
		d:= (2-3*al*c)/(2+3*al*c);
		print "d := ",d;
		bp := Sqrt(-ap);
		u := bp*(xL-om-al)/yL; print "u := ",u;
		v := (c*(xL-om-al)-1)/(c*(xL-om-al)+1); print "v := ",v;
	elif (JacobiSymbol(ZZ!ap,p) ne JacobiSymbol(-1,p)) and (JacobiSymbol(ZZ!dp,p) eq JacobiSymbol(-1,p)) then
		d:= (2+3*al*c)/(2-3*al*c);
		print "d := ",d;
		bp := Sqrt(-ap);
		u := bp*(xL-om-al)/yL; print "u := ",u;
		v := (c*(xL-om-al)-1)/(c*(xL-om-al)+1); print "v := ",v;
	else 
		print "No solution because ap and bp are both quadratic residue";
	end if;

end if;

print "Case: al=1-om";
al:=1-om;
csq := 3*al^2+a;
if JacobiSymbol(ZZ!csq,p) eq -1 then
	print "No solution as csq is quadration no residue";
elif JacobiSymbol(ZZ!csq,p) eq 0 then 
	print "No solutionas csq is 0";
elif JacobiSymbol(ZZ!csq,p) eq 1 then 
	c := 1/Sqrt(csq);
	ap := (3*al*c+2)/c;
	dp := (3*al*c-2)/c;
	if JacobiSymbol(ZZ!ap,p) eq JacobiSymbol(-1,p) then 
		d:= (2-3*al*c)/(2+3*al*c);
		print "d := ",d;
		bp := Sqrt(-ap);
		u := bp*(xL-om-al)/yL; print "u := ",u;
		v := (c*(xL-om-al)-1)/(c*(xL-om-al)+1); print "v := ",v;
	elif (JacobiSymbol(ZZ!ap,p) ne JacobiSymbol(-1,p)) and (JacobiSymbol(ZZ!dp,p) eq JacobiSymbol(-1,p)) then
		d:= (2+3*al*c)/(2-3*al*c);
		bp := Sqrt(-ap);
		u := bp*(xL-om-al)/yL; print "u := ",u;
		v := (c*(xL-om-al)-1)/(c*(xL-om-al)+1); print "v := ",v;
		print "d := ",d;
	else 
		print "No solution because ap and bp are both quadratic residue";
	end if;
	c := -1/Sqrt(csq);
	ap := (3*al*c+2)/c;
	dp := (3*al*c-2)/c;
	if JacobiSymbol(ZZ!ap,p) eq JacobiSymbol(-1,p) then 
		d:= (2-3*al*c)/(2+3*al*c);
		print "d := ",d;
		bp := Sqrt(-ap);
		u := bp*(xL-om-al)/yL; print "u := ",u;
		v := (c*(xL-om-al)-1)/(c*(xL-om-al)+1); print "v := ",v;
	elif (JacobiSymbol(ZZ!ap,p) ne JacobiSymbol(-1,p)) and (JacobiSymbol(ZZ!dp,p) eq JacobiSymbol(-1,p)) then
		d:= (2+3*al*c)/(2-3*al*c);
		print "d := ",d;
		bp := Sqrt(-ap);
		u := bp*(xL-om-al)/yL; print "u := ",u;
		v := (c*(xL-om-al)-1)/(c*(xL-om-al)+1); print "v := ",v;
	else 
		print "No solution because ap and bp are both quadratic residue";
	end if;

end if;

print "Case: al=mu-om";
al:=mu-om;
csq := 3*al^2+a;
if JacobiSymbol(ZZ!csq,p) eq -1 then
	print "No solution as csq is quadration no residue";
elif JacobiSymbol(ZZ!csq,p) eq 0 then 
	print "No solutions csq is 0";
elif JacobiSymbol(ZZ!csq,p) eq 1 then 
	c := 1/Sqrt(csq);
	ap := (3*al*c+2)/c;
	dp := (3*al*c-2)/c;
	if JacobiSymbol(ZZ!ap,p) eq JacobiSymbol(-1,p) then 
		d:= (2-3*al*c)/(2+3*al*c);
		print "d := ",d;
		bp := Sqrt(-ap);
		u := bp*(xL-om-al)/yL; print "u := ",u;
		v := (c*(xL-om-al)-1)/(c*(xL-om-al)+1); print "v := ",v;
	elif (JacobiSymbol(ZZ!ap,p) ne JacobiSymbol(-1,p)) and (JacobiSymbol(ZZ!dp,p) eq JacobiSymbol(-1,p)) then
		d:= (2+3*al*c)/(2-3*al*c);
		bp := Sqrt(-ap);
		u := bp*(xL-om-al)/yL; print "u := ",u;
		v := (c*(xL-om-al)-1)/(c*(xL-om-al)+1); print "v := ",v;
		print "d := ",d;
	else 
		print "No solution because ap and bp are both quadratic residue";
	end if;
	c := -1/Sqrt(csq);
	ap := (3*al*c+2)/c;
	dp := (3*al*c-2)/c;
	if JacobiSymbol(ZZ!ap,p) eq JacobiSymbol(-1,p) then 
		d:= (2-3*al*c)/(2+3*al*c);
		print "d := ",d;
		bp := Sqrt(-ap);
		u := bp*(xL-om-al)/yL; print "u := ",u;
		v := (c*(xL-om-al)-1)/(c*(xL-om-al)+1); print "v := ",v;
	elif (JacobiSymbol(ZZ!ap,p) ne JacobiSymbol(-1,p)) and (JacobiSymbol(ZZ!dp,p) eq JacobiSymbol(-1,p)) then
		d:= (2+3*al*c)/(2-3*al*c);
		print "d := ",d;
		bp := Sqrt(-ap);
		u := bp*(xL-om-al)/yL; print "u := ",u;
		v := (c*(xL-om-al)-1)/(c*(xL-om-al)+1); print "v := ",v;
	else 
		print "No solution because ap and bp are both quadratic residue";
	end if;

end if;

print "======================";
print "Method 3";
print "======================";

if (p mod 4) eq 1 then
	print "d := ",(-mu);
	bp := Sqrt(Fp!-4);
	u := bp*yL/(mu-xL^2); print "u := ",u;
	v := (yL^2-xL^2*(1-mu))/(yL^2+xL^2*(1-mu)); print "v := ",v;
elif (p mod 4) eq 3 then
	if JacobiSymbol(ZZ!mu,p) eq -1 then
		print "d := ",(-1/mu);
		bp := Sqrt(-4*mu);
		u := bp*yL/(mu-xL^2); print "u := ",u;
		v := (yL^2+xL^2*(1-mu))/(yL^2-xL^2*(1-mu)); print "v := ",v;
	else
		print "No solution as p = 3 (mod 4) and mu square";
	end if;
end if;
