%% SVD performance

clear all
%ns=[500, 1000];
ns=[200:100:2000];
s=size(ns,2);
times=zeros(s,1);
for j=1:s
    A=rand(ns(j));
    tic;
    svd(A);
    times(j)=toc;
end

exponents=zeros(s-1,1);

for j = 1:s-1
    exponents(j)=log(times(j+1)/times(j))/log(ns(j+1)/ns(j));
end

exponents

loglog(ns,times,'x-')

fprintf('\n The average order is %f \n', mean(exponents))