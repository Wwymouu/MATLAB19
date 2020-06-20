b=str2sym('exp(1)')
y=vpa(b,58)

syms x
int(sin(3*x)*cos(5*x),x)
int(x*log(x),x,2,5)
limit(sin(x)*(1-cos(2*x))/x^3,x,0)

