function T=e12FunctionValues(n,f,a,b)
% compute f(x) where x is in a set of n equally spaced points
% between a and b.
% Store the result as the matrix (x,f(x))
% The function f in input must be capable of operating on vectors

% get the equally spaced points; we want a column vector, so we transpose
T=linspace(a,b,n)';
% store the result
T=[T f(T)];
end