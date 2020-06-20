% Be MySum a function that arbitrarily accepts many input arguments and
% whose k Power sums in k and many outputs arguments writes .

function varargout=mysum(varargin)
varargout{1}=varargin{1};
for i=2:min(nargin,nargout)
   varargout{i}=varargout{i-1}+varargin{i};
end

for i=min(nargin,nargout)+1:nargout
    varargout{i}=varargout{i-1};
end

end