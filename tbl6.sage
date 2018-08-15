reset();
var('x1,y1,u,usqrt,a,b')

print "x2 = 0:"
print "======="
x2=0
fx1 = x1^3-3*x2*x1^2 + (2*(u+1)*x2-u)*x1-u*x2
r = solve(fx1,[x1])
x = r[0].rhs()
print "if x1=",x
fy1 = 2*y1^2-(3*x^2-2*(u+1)*x+u)*(x-x2)
print "solutions of y1",solve(fy1,[y1])
x = r[1].rhs()
print "if x1=",x
fy1 = 2*y1^2-(3*x^2-2*(u+1)*x+u)*(x-x2)
print "solutions of y1",solve(fy1,[y1])


print "x2 = 1:"
print "======="
x2=1
fx1 = x1^3-3*x2*x1^2 + (2*(u+1)*x2-u)*x1-u*x2
r = solve(fx1,[x1])
x = r[0].rhs()
print "if x1=",x
fy1 = 2*y1^2-(3*x^2-2*(u+1)*x+u)*(x-x2)
print "solutions of y1",solve(fy1,y1)
x = r[1].rhs()
print "if x1=",x
fy1 = 2*y1^2-(3*x^2-2*(u+1)*x+u)*(x-x2)
print "solutions of y1",solve(fy1,y1)

#Simplifications of the last twwo SAGE solutions for y1
#
#for x = r[0].rhs():::::
#y1^2 = u^2 + 1/2*u*sqrt(-u + 1) - 3/2*(-u + 1)^(3/2) - 3*u - 1/2*sqrt(-u + 1) + 2
#= (u^2 - 2*u +1) + 1/2*u*sqrt(-u + 1) - 3/2*(-u + 1)^(3/2) - u - 1/2*sqrt(-u + 1) + 1
#= (u - 1)^2+ 1/2*u*sqrt(-u + 1) - 3/2*sqrt(-u + 1)*(1 - u) - u - 1/2*sqrt(-u + 1) + 1
#= (u - 1)^2+ 1/2*u*sqrt(-u + 1) - 3/2*sqrt(-u + 1) + 3/2*u*sqrt(-u + 1) - u - 1/2*sqrt(-u + 1) + 1
#= (u - 1)^2 + 2*u*sqrt(-u + 1) - 2*sqrt(-u + 1) - u + 1
#= (u - 1)^2 + 2*(u-1)*sqrt(-u + 1) +(-u+1)
#= (u-1+sqrt(-u + 1))^2
#= (-1+u+sqrt(-u + 1))^2
#
#for x = r[1].rhs()::::
#y1^2 = u^2 + 2*(-u + 1)^(3/2) - 3*u + 2
#=u^2 + 2*sqrt(-u + 1)*(-u + 1) - 3*u + 2
#=u^2 - 2*sqrt(-u + 1)*u + 2*sqrt(-u + 1) - 3*u +2
#=(u^2 - 2*u + 1) - 2*sqrt(-u+1)*(u-1) -u +1
#=(u-1)^2 - 2*sqrt(-u+1)*(u-1) + (sqrt(-u+1))^2
#=(u-1-sqrt(-u+1))^2
#=(-1+u-sqrt(-u+1))^2


print " "
print "x2 = u:"
print "======="
x2=u
fx1 = x1^3-3*x2*x1^2 + (2*(u+1)*x2-u)*x1-u*x2
r = solve(fx1,[x1])
x = r[0].rhs()
print "if x1=",x
fy1 = 2*y1^2-(3*x^2-2*(u+1)*x+u)*(x-x2)
print "solutions of y1",solve(fy1,y1)
x = r[1].rhs()
print "if x1=",x
fy1 = 2*y1^2-(3*x^2-2*(u+1)*x+u)*(x-x2)
print "solutions of y1",solve(fy1,y1)

#Simplifications of the last twwo SAGE solutions for y1
#
#for x = r[0].rhs():::::
#y1^2 = 2*u^3 - 3*u^2 - 2*(u^2 - u)^(3/2) + u
#=2*u^3 - 3*u^2 - 2*(u^2 - u)*sqrt(u^2 - u) + u
#=2*u^3 - 3*u^2 - 2*u^2*sqrt(u^2 - u) + 2*u*sqrt(u^2 - u) + u
#=2*u^3 - 2*u^2*sqrt(u^2 - u) - 3*u^2 + 2*u*sqrt(u^2 - u) + u
#
#for x = r[1].rhs():::::
#y1^2 = 2*u^3 - 3*u^2 + 2*(u^2 - u)^(3/2) + u
#= 2*u^3 - 3*u^2 + 2*(u^2 - u)*sqrt(u^2 - u) + u
#= 2*u^3 - 3*u^2 + 2*u^2*sqrt(u^2 - u) - 2*u*sqrt(u^2 - u) + u
#= 2*u^3 + 2*u^2*sqrt(u^2 - u) - 3*u^2 - 2*u*sqrt(u^2 - u) + u



