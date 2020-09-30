function k = tolerance_sequence(tol)
    ture_val = sqrt(3)-1;
    k = 1;
    a(1) = 1;
    while abs(a(k)-ture_val)>tol && k<1000
        k = k+1;
        a(k) = 1/(1+0.5*a(k-1));
    end
    if k == 1000
        error('not converging')
    end
    
end
