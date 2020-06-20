function p = bisection( f,a,b )
%bisection 
% run with 
% bisection(@(x) sin(x), 3, 3.5)

if f(a)*f(b)>0  %the fct values has to have different values
    disp('Wrong choice')
else
    p = (a + b)/2; %compute the midpoint of the interval
    err = abs(f(p));
    while err > 1e-7 %until the convergence is satisfactory
   if f(a)*f(p)<0 
       b = p;
   else
       a = p;          
   end
    p = (a + b)/2; 
   err = abs(f(p));
    end
 
end
    

end

