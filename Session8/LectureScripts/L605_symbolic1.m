% symbolic variables

syms x y 
class (x)
cc=sqrt(x+y)
class(cc)  %can do symbolic operations
f(x)=sqrt(x)

% numbers  in symbolic representation ( any Precision)
a=sym('123312312312312.123213123123213123123123')
sym('10/3')
pp=sym('pi')
class(pp )
sin(pp)

% Variable precision arithmetic evaluation of a symbolic expression
vpa(pp) % default 32 digits
vpa(pp,500)

% Numeric conversion
double(pp)

% simplify expressions

a=sin(x)^2+cos(x)^2
simplify(a)
simplify((x+1)/(x+1))

% replace values
a=subs(sin(x),x,3*pi/2)

% expand an expression
expand((1+x)^10)

% factor decomposition
factor(x^10-1)

% many operations from the mathematical analysis are implemented in Matlab
limit(x./sin(x),x,0) % limit
diff(x^5,x,2)       % differentialisation
int(x^5,x)          % indefinite integral
int(1/x,x,1,2)      % definite integral

% Solving equations
solve(x^3+2*x==0)  %solve one equation
[a,b]=solve(x+y==1,x-y==-1) % solve a system of equations

% solving a differential equation with an initial condition
syms y(t)
dsolve(diff(y,2)==-y,y(0)==0)

% matrices
A=sym('A',[2,2])
inv(A)
eig(A)

% plots
ezplot(sin(x),[0,pi])
syms y
figure
ezsurf(sin(x)*cos(y),[0,pi,0,2*pi])

% Also usable for anonymous functions
figure
ezplot(@(s) sin(s),[0,2*pi])
figure
ezplot(@cos,[0,2*pi])











