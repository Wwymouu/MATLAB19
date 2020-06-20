%plot the function f with red dashed line
close all
clear all
clc

xx=0:0.01:1;
ff = exp(xx/10).*sin(2*pi*xx);
gg= log(3+xx).*cos(4*pi*xx);

fig=figure()
hold on
plot(xx,ff, 'r--')
plot(xx,gg, 'b-.')
hold off
title('Cute functions')
axis([0,1, -2, 2])
legend('Marc', 'John')
xlabel('Time')
ylabel('Money')
savefig(fig, 'my_cute_functions')
pause
close()

%%
nmax=10;
ns=1:nmax;
A=zeros(nmax,1);
A(1)=1/2;
for k=2:nmax
    A(k)=A(k-1)+1/2^k;
end

fig2=figure()
hold on
axis([1 nmax, 0, 1.1])
plot(ns,A)
plot(ns,ones(size(ns)))


%% error
nmax=1000;
ns=1:nmax;
A=zeros(nmax,1);
errs=zeros(nmax,1);
A(1)=1/2;
for k=2:nmax
    A(k)=A(k-1)+1/2^k;
    errs(k) = abs(1-A(k));
end
figure()
plot(ns,errs)
title('plot')
ylabel('error')
xlabel('n')
pause

figure()
semilogy(ns,errs)
title('semilogy')
ylabel('error')
xlabel('n')
pause

figure()
loglog(ns,errs)
title('loglog')
ylabel('error')
xlabel('n')
pause

figure()
semilogx(ns,errs)
title('semilogx')
ylabel('error')
xlabel('n')
pause
