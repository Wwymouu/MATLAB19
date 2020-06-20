%%Comparing the two fibonacci functions.

disp('Fibonacci with recursion')

for n = 1:10
   fprintf('Fibonacci(%d)= %d\n', n, ex22_fibo_no_loops(n));
end

%%
disp(" ")
disp('Fibonacci with loops')

for n = 1:10
   fprintf('Fibonacci(%d)= %d\n', n, ex21_fibo_loops(n));
end


%%
disp(" ")
disp('Fibonacci with loops and timing')

tic
ex21_fibo_loops(40)
time=toc;
fprintf("time=%d\n",time )

%%
disp(" ")
disp('Fibonacci with recursion and timing')

tic
ex22_fibo_no_loops(40)
time=toc;
fprintf("time=%d\n",time )
