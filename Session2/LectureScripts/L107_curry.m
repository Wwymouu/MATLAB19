function out=L107_curry(f,g,x)
%Schreiben Sie eine Funktion curry(f, g,x) die
%zwei anonyme Funktionen mit einem Parameter
%annimmt und die Zusammensetzung der
%Funktionen x → f(g(x)) ausgibt.
%run L107_curry(@(x) x^2, @(x) sqrt(x), 125)

out=f(g(x));
end