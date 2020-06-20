% try all commands of exercises 8 to 10 to see mhat they do:

%% 8
disp('hist(rand(1,100000),100)':), hist(rand(1,100000),100)
% pause to show the first graph
pause(5)
disp('hist(randn(1,100000),100)':), hist(randn(1,100000),100)

%% 9
A=[1+i, 1+2i; 2, 4i];
disp('A??':), A??
disp('A.??':), A.??
disp('A.^A':), A.^A

%% 10
A=rand(10)
disp('diag(diag(A)) + diag(diag(A,1),1)+ diag(diag(A,2),2)':), ...
    diag(diag(A)) + diag(diag(A,1),1)+ diag(diag(A,2),2)

