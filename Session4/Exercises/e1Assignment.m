% construct and display all matrices from exercise 1

%% First matrix (A)
% Block diagonal, 3x3 blocks:
% Jordan block for 1
% 2x2 and 1x1 Jordan blocks for 2
% Diagonal of five
% The single 1 in the second block is added manually at the end

A=blkdiag(eye(3)+diag(ones(2,1),1),2*eye(3),5*eye(3));
A(4,5)=1;
disp(A);


%% Second matrix (B)
% The structure is clear: three blocks have constant elements, one
% is diagonaland and une is a vertical vector
% The functions horzcat and vertcat could actually be substituted
% by the concatenation via square brackets, ([a b] and [a;b]
% respectively), but they generate long expressions wich make them
% good examples of use of ...

B=horzcat(vertcat(ones(2,4),2*ones(3,4)),vertcat(diag([3,4,5]), ...
                                               horzcat(6*ones(2,2),[7;8])))

%% Third matrix (C)
% Same remarks as before for the concatenation

% This is used four times, so we store it 
base2=[5,6,7,8];

% The rest of the matrix is based on these two elements; it is
% not so clear whether it makes sense to store them separately
base0=diag([1,2]);
base1=diag([3,4]);
C=horzcat(base2',blkdiag(base0,base1),base2',vertcat(base2, ...
                                                  horzcat(base0,base1),base2))
