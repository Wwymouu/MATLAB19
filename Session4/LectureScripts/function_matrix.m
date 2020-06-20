function [ A ] = function_matrix( f,a,b,n )

%Erzeuge eine Wertetabelle mit N Werten der
%Funktion f(x) im Intervall [a,b], d.h. eine Nx2
%Matrix mit Einträgen x, f(x) in jeder Zeile.

% f = @(x) x^5-4*x+1
% f = @(x) exp(i*x/10)

A=zeros(n,2);
x=linspace(a,b,n);

for i=1:n    
    A(i,1)=x(i);
    A(i,2)=f(x(i));
end

end