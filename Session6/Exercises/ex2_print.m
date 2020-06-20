%%
disp('ex2')
%Create a string of the form
%The value of x ^ 2 at the point 2 4.
%The value of x ^ 2 at the location 2.1 is 4:41 .
%(Up to x = 3 ) ( Note : new line with \ n . )

%First case, we display the string directly in the command window
for n=2:0.1:3
    x=n^2;
    fprintf('The value of x^2 at place %1.1f is %1.2f. \n',n,x)
end

% Second case, we store the string in a string s
s=[];
for n=2:0.1:3
    x=n^2;
    s=[s, sprintf('The value of x^2 at place %1.1f is %1.2f. \n',n,x)];
end

disp(s)
