%% 1
disp('Ex1')
days_in_year = 365; hours_in_day=24; seconds_in_hour=3600;
n_hours = days_in_year*hours_in_day
n_seconds = n_hours*seconds_in_hour

%% 2
disp('Ex2')
help srqt

%% 3
disp('Ex3')
nthroot(10,3)

%% 4
disp('Ex4')
inv(1+2i)

disp('Ex5')
%overwrite the complex nb i,j
i=3
3*i
3i

% operations order

%%
disp('Ex6')
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
disp('Ex7')

(2 + 4 * -1 / 3 / 4) == (2 + ((4 * (-1)) / 3) / 4)
(2 + 4 == 5 | 3 + 5 ^ -1 & 2) == ((((2 + 4) == 5) | (3 + (5 ^ -1))) & 2)
(-3 < 7 < 5) == ((-3 < 7) < 5)
n=0
(sin (n+1)/(n+2)) == ((sin(n+1))/(n+2))

%%
disp('Ex8: the use of ans')

23
ans^2
x=sqrt(ans)
x^2-ans
x^2-ans
ans-x^2

%%
disp('Ex9: geometrical complex nb')
r=0.2;
p=1.32;
z=r*cos(p)+i*r*sin(p)
z=r*exp(i*p)
