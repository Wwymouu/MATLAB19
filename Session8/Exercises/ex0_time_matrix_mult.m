% Comparison between loops and optimized matlab functions
%for a random matrix n x n
n=500; 
A=rand(n); 
tic; 
my_matmult(A,A);  %this is our naive multiplication function
toc

t2=tic; %this is matlab multiplication
A*A;
toc(t2)


function C=my_matmult(A,B)
%Compute the matrix mutliplication in a naive way
% This code is inefficient so should NOT be used in anger.
[m,n] = size(A);
[p,q] = size(B);
%
if n ~= p
    error('Columns of the left matrix do not match rows of the right matrix.')
else  %3 loops, over rows, columns of new matrix and through the element of old matrices
    for I = 1:m
        for J = 1:q
            C(I,J) = 0;
            for K = 1:n
                C(I,J) = C(I,J) + A(I,K)*B(K,J);
            end
        end
    end
end

end