%%construct the matrices in an efficient way
display('ex1a')

A=diag([1 1 1 2 2 2 5 5 5])
B=diag([1 1 0 1 0 0 0 0],1)
C=A+B



display('ex1b')

A=ones(5,7)
A(3:5,1:4)=2
A(4:5,5:6)=6
A(1:3,5:7)=0
B=diag([3 4 5])
A(1:3,5:7)=B
A(4:5,7)=[7 8]

display('ex1c')

A=zeros(4,11)
b=[5,6,7,8]'
A(:,[1;2;7])=[b,b,b]
A(:,3:6)=diag([1 2 3 4])
A([1,4],8:11)=[b';b']
A(2:3,8:9)=diag([1 2])
A(2:3,10:11)=diag([3 4])

display('ex2')

%First way
A=randn(10)
[B,I]=sort(A,2); %sort each row in increasing order and I is the matrix of indexes
c=B(:,end) %the biggest values rowwise
index=I(:,end) %their corresponding indexes

%Second way
A=randn(10);
b=max(A,[],2);
c=A==b;
idx=zeros(size(b));
for k=1:size(b,1)
    z=c(k,:);
    idx(k)=find(z);
end

% Easiest way
[mas,idx2]=max(A,[],2);

display('ex3')

x=rand(10,1)
y=1./x   % in[mas,idx2]=max(A,[],2);vert a random vector



