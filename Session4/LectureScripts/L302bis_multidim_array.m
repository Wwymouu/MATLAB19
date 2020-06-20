% More Dimensions are possible
A = rand ( 4,5,7,4 )
size ( A)

% Access to elements corresponding
A(1,2,3,4)

%functions for multidimensional arrays
% Most functions also operate on multidimensional arrays , especially repmat , reshape .

A=rand(3)
B=repmat(A,[1,1,2])
size(B)  % 3 3 2
% relocate dimensions
C = shiftdim (B,1) %SHIFT dim to the left with one %3 2 3
size(C)
B(3,2,1)
C(2,1,3)

% Remove singleton dimensions
D = reshape ( B , [ 3,3,1,1,2,1,1 ] )
size(D)
D2 = squeeze ( D ) 
size(D2)
% returns an array B with the same elements as A, but with all singleton dimensions removed
isequal ( B , D2 )