clc
clear all

f=@(x) sin(x);
df=@(x) cos(x);

x0=2; %x0=44; %
tol=0.00000005;
[sol, iter] = ex5_newton(f,df,x0,tol);

fprintf('Approximate Root is %.15f\n',sol)
fprintf('Exact Root is %.15f\n',pi)
fprintf('Error is %.15f\n',abs(sol-pi)/pi)
fprintf('Number of iterations %.15f\n',iter)

function [ x, k ] = ex5_newton( f, df, x1, tol)
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