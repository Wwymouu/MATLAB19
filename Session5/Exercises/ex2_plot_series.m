%We want to print the partial sum of the series 1/2^k.

%Define a maximum point we want to reach, and a set of n
nmax=10;
ns=1:nmax;
% initializing partial sums and computing them
A=zeros(nmax,1);
A(1)=1/2;
for k=2:nmax
    A(k)=A(k-1)+1/2^k;
end

%plot on the figure A and a line of ones.
fig2=figure()
hold on
axis([1 nmax, 0, 1.1])
plot(ns,A)
plot(ns,ones(size(ns)))
hold off


%% error
%As before, but also computing the error wrt 1. (I'm choosing a bigger nmax)
nmax=100;
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

figure()
semilogy(ns,errs)
title('semilogy')
ylabel('error')
xlabel('n')

figure()
loglog(ns,errs)
title('loglog')
ylabel('error')
xlabel('n')

figure()
semilogx(ns,errs)
title('semilogx')
ylabel('error')
xlabel('n')

% The best is the semilogy in this context, because we can see the plot as
% a line and catch the details of its behaviour