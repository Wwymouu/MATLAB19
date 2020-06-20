function [A] = my_row_echelon_form(A, tol)
% Reduced row echelon form 
% R = REF(A) produces the reduced row echelon form of A 
% PROPERTIES:
%     *  if a row doesn't consist entirely of zeros, then the first nonzero
%     nb in the row is a 1 == leading 1
%     *  the row consisting entirely of zeros are grouped at the bottom of
%     the matrix
%     *  in any two successive rows that do not consist entirely of zeros, the leading 1 in the lower row is at the right of the leading 1 in the higher row
%     * each column that contains a leading 1 has zeros everywhere else

[m,n] = size(A);

% Loop over the entire matrix.
i = 1;
j = 1;

while (i <= m) && (j <= n)
   % Find value and index of largest element in the remainder of column j.
   [~,k] = max(abs(A(i:m,j))); k = k+i-1;

   % Swap i-th and k-th rows.
   A([i k],j:n) = A([k i],j:n);
   % Divide the pivot row by the pivot element.
   if abs(A(i,j)) > tol
        A(i,j:n) = A(i,j:n)/A(i,j);
   end
   
   
   % Subtract multiples of the pivot row from all the other rows.
   for k = [1:i-1 i+1:m]
       A(k,j:n) = A(k,j:n) - A(k,j)*A(i,j:n);
   end
   A(abs(A)<=tol)=0.;
   i = i + 1;
   j = j + 1;
end


end