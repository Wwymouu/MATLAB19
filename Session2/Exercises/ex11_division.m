function [ y,rest ] = ex11_division( a,b )
% Test with ex11_division(10,4)
a = int32(a);
b = int32(b);
y=idivide(a,b);
rest=mod(a,b);
end

