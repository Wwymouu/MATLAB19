function k = tolerance_series(tol)
    true_val = 3/2;
    k = 1;
    A(1) = 2/3;
    while abs(A(k)-true_val)>tol && k<1000        
        k = k+1;
        A(k) =A(k-1)+1/k-1/(k+2);
    end
    if k>1000
        error('not converging')
    end
       
end