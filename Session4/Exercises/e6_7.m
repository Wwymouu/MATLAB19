% try all commands of exercises 6 and 7 on the a random matrix and
% a diagonal matrix to see what they do:

% matrices
a=rand(10)
b=blkdiag([0],eye(3))

% commands; see the help for more info
disp('mean(a):'), mean(a)
disp('mean(b):'), mean(b)
disp('median(a):'), median(a)
disp('median(b):'), median(b)
disp('mode(a):'), mode(a)
disp('modb(a):'), mode(b)
disp('rank(a):'), rank(a)
disp('rank(b):'), rank(b)
disp('null(a):'), null(a)
disp('null(b):'), null(b)
disp('rref(a):'), rref(a)
disp('rref(b):'), rref(b)
disp('orth(a):'), orth(a)
disp('orth(b):'), orth(b)
