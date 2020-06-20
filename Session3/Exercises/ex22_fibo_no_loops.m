function y=ex22_fibo_no_loops(n)
%fibonacci with recursion. Input: positive integer n. Output: the n-th Fibonacci's number 

if n==1 || n==2
    y=1;
else
    y=ex22_fibo_no_loops(n-2)+ex22_fibo_no_loops(n-1);
end

end
