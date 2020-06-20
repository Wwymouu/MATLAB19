function C = checkerboard(n)

  A=rand(n,n)
    % case of even rows
  if mod(n, 2) == 0
    B=A(:) 
    C = zeros(n+1 , n);           % create a matrix having a plus row
    C(2 : 2 : end) = B(1:n^2/2+n/2);    % select every second element
    C(end, :) = [];               % remove the last row from the matrix
  else
    B=A(:)
    C = zeros(n, n);                      % create the matrix
    C(2 : 2 : end) = B(1:fix(n^2/2));     % select every second element
  end
end