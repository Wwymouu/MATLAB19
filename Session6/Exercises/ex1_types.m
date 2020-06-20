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
