function fib=ex21_fibo_loops(n)
%fibonacci with loop. Input: positive integer n. Output: the n-th Fibonacci's number 
fib_1=1;
fib_2=1;
if n==1 || n==2
    fib=1;
else
    for k=3:n
        fib=fib_2+fib_1;
        fib_2=fib_1;
        fib_1=fib;
    end
end

end

