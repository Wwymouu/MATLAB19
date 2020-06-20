function [  varargout ] = varargout_function( )
%This returns as many outputs as called
%nargout is a function that returns the number of outputs

for i=1:nargout
    if mod(i,2)==0
        varargout{i}=i^2;
    else
        varargout{i}=char(100+i);
    end
end

end

