function [A,B]=e5Chessboard(n)
% Construct a chessboard from a random matrix

% random matrix
A=rand(n);
% zero matrix; some elements of A will be copied into it;
% alternatively, we could have copied A and set some elements to 0
B=zeros(n,n);
% we take elements from either odd rows and odd columns...
B(1:2:n,1:2:n)=A(1:2:n,1:2:n);
% ... or even rows and even columns; if you absolutely wanted to
% use a loop, you could check that the sum af row and comunt
% indices is even
B(2:2:n,2:2:n)=A(2:2:n,2:2:n);
% spy the matrix to see the structure!
spy(B);
end