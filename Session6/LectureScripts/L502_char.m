% Old Strings are 1xn matrices of type char
s='hello'
class(s)
size(s)
s(2)

%glue two chars
s2=[s ' world']

%char arrays
s=['hello', 'world'];
s(1)
s(2)

% string arrays
a="hello"
class(a)

s=[a, "world"];
s(1)
s(2)


z=char(s)
class(z)
t=string(z)
class(t)


%conversion number <-> (old) string

num2str(1.234)
class(ans)
str2double('1.234')
class(ans)

sprintf('The number is %f or %d.',1.234,5) %help sprintf
% %.1f fixed point notation  (floating-point number)
% %d base 10 (integer) %double-precision values 
% help format 
% https://ch.mathworks.com/help/matlab/ref/sprintf.html
% Formatting Strings help

sprintf('The number is %.1f.',1.234)
sprintf('The number is %.7f.',1.234)
sprintf('The number is %f. ',[1,2,3,4])

%replace a part of the string
strrep('a test','test','toast')

%even if one of the input is a string, then the output is a string
strrep('a test',"test",'toast') 
