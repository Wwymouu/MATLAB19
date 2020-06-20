% Expand your curry function , so that the Arguments (functions) an arbitrary but
% number of input parameters can contains

function y=inception(varargin)

y=varargin{nargin};
for i=nargin-1:-1:1
    y=varargin{i}(y);
end

end