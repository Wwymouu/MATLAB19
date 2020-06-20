function [ x, k ] = newton( f, df, x1, tol)
% Finding zero of f usin Newton's method.

x=x1+2*tol;
k=0;
while(abs(x-x1) > tol && k<10000)
    x=x1;
    x1=x-(f(x)/df(x));
    k=k+1;
end

if k==10000
    error('not converging')
end

x=x1;

end

