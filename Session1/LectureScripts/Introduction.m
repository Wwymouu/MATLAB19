display('Ex1')
%overwrite the complex nb i,j
i=3
3*i
3i

% operations order

%%
display('Ex2')
%{ 
find (a,b,c) integers s.t for (op1,op2):
A:= a op1 (b op2 c) ~= B:=(a op1 b) op2 c
%}
% (-,-)  A~=B 
1-2-3

% (-,+) A~=B
1-2+3

%(&,|) A~=B

1 &1 | 0

%(&,>=) A~=B
0 & 1 >= (-1)

%%
display('Ex3')

(2 + 4 * -1 / 3 / 4) == (2 + ((4 * (-1)) / 3) / 4)
(2 + 4 == 5 | 3 + 5 ^ -1 & 2) == ((((2 + 4) == 5) | (3 + (5 ^ -1))) & 2)
(-3 < 7 < 5) == ((-3 < 7) < 5)
n=0
(sin (n+1)/(n+2)) == ((sin(n+1))/(n+2))

%%
display('Ex4: the use of ans')

23
ans^2
x=sqrt(ans)
x^2-ans
x^2-ans
ans-x^2

%%
display('Ex5:geometrical complex nb')
r=0.2;
p=1.32;
z=r*cos(p)+i*r*sin(p)
z=r*exp(i*p)
