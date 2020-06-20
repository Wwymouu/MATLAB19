exact_value=pi^2/6;
tol=0.0023;
sum=0;
k=1;
while ( abs(sum-exact_value)> tol) 
    sum=sum+1/k^2;
    k=k+1;
end

error=abs(sum-pi^2/6);

disp(error)
disp(k)