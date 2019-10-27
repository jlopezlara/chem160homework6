a=4.192
b=0.02665
Vbar=0.05
T=280
R=0.083145
#Peng-Robinson Equation
P=R*T/(Vbar-b)-a/(Vbar*(Vbar+b)+b*(Vbar-b))
cat(P,"\n")
