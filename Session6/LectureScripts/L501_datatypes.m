%check the type of data
a=1==0
class(a)
b=rand(5)
class(b)

% converting
a=1.5
class(a)
b=int8(a)  %int8(S) converts a symbolic matrix S to a matrix of signed 8-bit integers.
class(b)
char(1:1000)

%Note: a combination of different types allows only partially , and unexpected results
c=b*2.7
class(c)
d=single(2.7) %Convert to single precision
%b*d

% In addition, special values ????:
0==-0
1/0
-1/0
0/0
nan==nan

% Undisplayable in this form numbers are rounded

eps
2^-52
1+eps==1
1+eps/2==1
1-eps/2==1
1+3*eps/4==1


% floating point also : floating point numbers . 
% Matlab datatypes single and double , the latter with a double accuracy

% double value
%{
for x=0:2^52-1
    for e=-1022:1023
        m=1+x*2^(-52)
        if s==1
            exp=s*m*2^e
        else s==-1
            exp=s*m*2^e
        end
    end
end
%}
% Floating-point relative accuracy
% eps returns the distance from 1.0 to
% the next larger double-precision number, that is, eps = 2^-52.



