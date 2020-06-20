function out=ex12_curry(f,g,x)
% e.g: Run with ex12_curry(@(x) x^2, @(x) x+2, 2)
out=f(g(x));
end
