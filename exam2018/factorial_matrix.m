function ave = factorial_matrix(n)
    A = zeros(n,n);
    for k = 1:n
        for l = 1:n
            if k>=l
                A(k,l) = factorial(idivide(int32(k),int32(l)));
            else
                A(k,l) = factorial(mod(l,k));
            end
        end
    end
    ave = mean(A,'all');%mean(mean(A));
end
        
            