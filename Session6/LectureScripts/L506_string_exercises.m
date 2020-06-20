clear all

disp('ex1')
A=[1 2; 3 4*i]

isequal(A, A') % logical, =0
%%
sum(sum(A - A')') == 10 %takes the sum on columns
%logical, =0

%%
sum(diag(A == A')) & abs(sum(sum(A)))
% logical, =1


%%
int8(255) + 1  
% converts the elements of an array into signed 8-bit (1-byte) integers of class int8. 
% % int8, =127

%%
int32(int8(255) + 1) * 5
% converts the elements of an array into signed 32-bit (4-byte) integers of class int32.
% int32, 635

%%
logical(255) + 1 %convert an array to a logical
%double, =2

%%
int64(double(int64(2)^63) - 1) - int64(2)^63
%int64, 0 because of the approximation error given by the conversion in double 

%%
disp('ex2')
%Create a string of the form
%The value of x ^ 2 at the point 2 4.
%The value of x ^ 2 at the location 2.1 is 4:41 .
%(Up to x = 3 ) ( Note : new line with \ n . )

for n=2:0.1:3
    x=n^2;
    fprintf('The value of x^2 at place %1.1f is %1.2f. \n',n,x)
end

s=[];
for n=2:0.1:3
    x=n^2;
    s=[s, sprintf('The value of x^2 at place %1.1f is %1.2f. \n',n,x)];
end

% Calculate the numerical Date Value of Your Birthday . 
% How many days old are you ?
begins=datenum('28.7.1914','dd.mm.yyyy')
ends=datenum('11.11.1918')
days=ends-begins

%mat2cell Convert array to cell array with potentially different sized cells

A=[2,3, 5, 7;11,2,5,7; 6, 7,7,8];
B=mat2cell(A, [1 2], [2 1 1])
