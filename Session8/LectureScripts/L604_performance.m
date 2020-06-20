tic; 
x=[1:100000]; 
toc
tic; 
x=[]; 
for k=1:100000
    x(k)=k;
end
toc

%the is a difference in the elapsed time
% the variable x changes every iteration; loops are slow

tic; x=[1:100000]; toc
tic; x=zeros(1,100); 
for k=1:100000, x(k)=k; end, toc

% Take-home message:
%- Avoid loops
%- Variables should not change the size in the loop


% Comparison between loops and optimized matlab functions
n=500; 
A=rand(n); 
tic; 
my_matmult(A,A); 
toc

t2=tic; 
A*A;
toc(t2)