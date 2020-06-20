clc
clear all

f=@(x) sin(x);
df=@(x) cos(x);

x0=2; %x0=44; %
tol=0.05;
[sol, iter] = newton(f,df,x0,tol);

fprintf('Approximate Root is %.15f\n',sol)
fprintf('Exact Root is %.15f\n',pi)
fprintf('Error is %.15f\n',abs(sol-pi)/pi)
fprintf('Number of iterations %.15f\n',iter)