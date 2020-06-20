function [ ninp ] = varargin_function( varargin )
%This function display all the inputs

ninp=size(varargin,2);

for i=1:ninp
    disp(varargin{i})
end


end

