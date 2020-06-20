function y=inception(varargin)
% Expand your curry function , so that the Arguments (functions) an arbitrary but
% number of input parameters can contains
% Input should be anonymous functions as many as we want and (at the end)
% evaluation points
% Ex. inception(@sin,@cos,@exp, 0.1:0.3:1)

% evaluating the points (last input)
y=varargin{nargin};
%iteratively applying the f_{k-1} to the result y obtained by previous
%evaluation
for i=nargin-1:-1:1
    y=varargin{i}(y);
end

end