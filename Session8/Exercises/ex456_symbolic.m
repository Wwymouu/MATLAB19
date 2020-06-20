syms x k

%% computing the indefinite integral
int(sin(3*x)*cos(5*x),x)

%% computing the definite integral
int(x*log(x),x,2,5)

%% limit of a function
limit(sin(x)*(1-cos(2*x))/x^3,x,0)

%% limit of a series
symsum((-1)^k/k,k,1,Inf)