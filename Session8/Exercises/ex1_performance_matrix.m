%% Computes numerically the complexity of my matrix multiplication.
% Different times for different ns, then properties of logarithm.
% Run sections!

%ns=[500, 1000];

ns=[100:100:1000];
s=size(ns,2);
times=zeros(s,1);
for j=1:s
    A=rand(ns(j));
    B=rand(ns(j));
    tic;
    %A*B;
    my_matmult(A,B);
    times(j)=toc;
end

exponents=zeros(s-1,1);

for j = 1:s-1
    exponents(j)=log(times(j+1)/times(j))/log(ns(j+1)/ns(j));
end

exponents

loglog(ns,times,'x-')
my_k=mean(exponents);

fprintf('\n The average order is %f \n', my_k)

%estimation of the constant c     f = cn**k

for j=1:s
    c(j) = times(j)/power(ns(j),k);
end

my_c=mean(c);
fprintf('\n The average constant c is %f \n', my_c)


