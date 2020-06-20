A=[1,2,3;4,5,6]
A(2,3)    %the element of the position (2,3)
A(2,3)=7  %change the value of the position (2,3)
diag(A)   %the diagonal of matrix A
B=diag([1,2])  %create a 2x2 matrix with [1,2] on diagonal
diag(B,-1)  %gives the diagonal under the principal one
diag(B,1)   %gives the diagonal above the principal one
diag([3,1],1)  % build a matrix with a diagonal [3,1] above the principal
C=[A,B]     % Creates a matrix merging A,B by columns 
D=[C;A,B]   %Creates a matrix merging C and [A,B] by lines 
eye(5)      %eye matrix: ones on diagonal, 0 in rest; dimension: 5x5
ones(2,4)   %2x4 matrix with ones everywhere
zeros(3,5)  %3x5 matrix with zeros everywhere
rand(3)
rand(2,4)   %creates random matrices
magic(3)   
%returns an n-by-n matrix constructed from the integers 1 through n^2 with
%equal row and column sums. The order n must be a scalar greater than
%or equal to 3. 

E=[]   %empty matrix

size(A)    %SIZE OF MATRIX A
size(A,1)  % size of nb of lines
size(A,2)  %size of nb of columns

A2=reshape(A,3,2) %RESHAPE ONE MATRIX
A3=repmat(A,2,2)  %create block matrices putting the matrix A on each position
cos(A)   %the function are working on matrices, too

A3(1:3,2:4)  %select only a part of the matrix
A3(1:3,[1 4 3]) %select some lines and columns without beeing consecutive
A3(1:3,1:2:6)  %select only the odd columns
A3(1:6)  %creates a vector with the elements taken columnwise
A3(1,1:end)  %takes only the first line
A3(:,1:3)  %takes all the lines and the columns from 1 to 3

1:3:15 %a:s:b array of number equispaced with distance s and start at a
.1:.2:5

plot(sin(0:.01:2*pi))

A3(:)   %creates a vector from the entire matrix
A3'  %the transpose of a matrix

A3(2) %the second element columnwise

A(:)=1:numel(A) %numel(A) returns the number of lines x columns
numel(A) %number of elements in the matrix

A=randn(4,5) % normal random number N(0,1)

A>=0.1  %logical matrix with 1 is the request is TRUE or 0 if it is FALSE
A(A>=0.1) %writes the elem >= 0.1
find(A>=0.1) %writes the positions where A>=0.1
A(find(A>=0.1)) %writes the elem frm the position

A=rand(5)
A(:,[2,4])=[]  %empty matrix for columns 2,4

A=[1 2 3 4]'
size(A)
A(25)=3 %automatical you are changing the size of the vector
size(A)

max(A)
min(A)
A=randn(3,4)
mean(A) %mean(A) return a row vector containing the mean of each column.
mean(A,2) %mean(A) return a column vector containing the mean of each row.


isequal(A,B) %verifies if two matrices are equal
kron(A,B) 
%{ 
kron(A,B) returns the Kronecker tensor product of matrices A and B.
If A is an m-by-n matrix and B is a p-by-q matrix,then kron(A,B) is an m*p-by-n*q matrix
formed by taking all possible products between the elements of A and the matrix B.
%}


