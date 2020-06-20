% A structure has fields to the ( structname ) above and
% ( Fieldname ) can be accessed. 
% Used for grouping of related values ​​.


calib=struct  %creates a scalar (1-by-1) structure with no fields.
calib.focal_length=1.2
calib.shutter_time=0.01
calib.date=now
fieldnames(calib)
calib
size(calib)

% As usual, the array- size is adjusted if necessary

calib(3).focal_length=1.5
size(calib)
calib(3)

%% cell arrays
%the fields of cell arrays ( matrices of type cell ) can take any type of data

s={[1 2 3],'asdasd';2, 1==0}
class(s)
size(s)

% Access to a part of arrays as usual , for example 

a=s(1,1)
class(a)  %it's still a cell

% access to a value
a=s{1,1}
class(a)


% it is a list separated by a comma 
s2={1,2,[3,4]}
class(s2)
[s2{:}]

s{1,1:2} 
class(s{1,1:2}) %error


%% Containers.Map

keySet={'Jan', 'Feb', 'Mar', 'Apr'};
valueSet=[327.2 369.2 197.6 178.4];
M=containers.Map(keySet, valueSet)

M('Mar')

M.keys()
M.length()
M.values()
