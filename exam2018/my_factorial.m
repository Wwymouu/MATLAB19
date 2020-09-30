function n =my_factorial(M)
    n = 1;
    multi_n = 1;
    while multi_n <= M
        multi_n = multi_n * n;        
        n = n+1;
    end
    
    %for factorical(n) < M
    	%n = n+1;
    %end
    
    n = n-1;
end