a=33.258
b=-7.5884
c=1.0306
d=0.058757
e=-0.0033566
f=0.00060696

#P= ax + bx^2 + cx^3 + dx^4 + ex^5 +fx^6
roots = polyroot(c(a,b,c,d,e,f))
cat("Density of Propane at at pressure of 200 bar: ",roots)
