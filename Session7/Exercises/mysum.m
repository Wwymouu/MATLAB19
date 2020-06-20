function varargout=mysum(varargin)
% Be MySum a function that arbitrarily accepts many input arguments and
% returns as many partial sums  of these inputs as many outputs arguments it has.

%if the input is empty, returns zeros for all the outputs
if isempty(varargin)
    for k=1:nargout
        varargout{k}=0;
    end
    return
end

varargout{1}=varargin{1}; %the first partial sum is the first argument
% for following partial sums we add to the previous one a new input
% we stop both if outputs or inputs are over
for i=2:min(nargin,nargout)
   varargout{i}=varargout{i-1}+varargin{i};
end

% if we have some output left, we fill them with the last partial sum
for i=min(nargin,nargout)+1:nargout
    varargout{i}=varargout{i-1};
end

end