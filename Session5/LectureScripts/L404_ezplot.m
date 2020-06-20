ezplot(@(x) sin(x))
pause 

syms x y
f=cos(x*y)+sin(x);
ezsurf(f,[-pi, pi,-pi,pi])

pause
clear x y
g=@(x,y) 1./(x.^2+y.^2);
ezsurf(g)

pause
ezplot(f,[-pi, pi,-pi,pi])
