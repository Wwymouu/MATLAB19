function [y] = values(a,b,k,n)
    
	for i = 1:n
        x(i) = a+(b-a)/(n-1)*(i-1);
        y(i) = x(i).^2+sin(k*pi*x(i))/(x(i)+1);
	end

end
    