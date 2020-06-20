% Often you have to store data in files or read from there . 
% Easiest way: 

save   % stores the complete workspace in file matlab.mat

clear all

load   % Load variables from file into workspace

% On the other file name , or read only certain variables

A=rand(3)
B=rand(4)

save myfile.mat A B
clear
load myfile.mat A B
who

clear
saved=load('myfile.mat');
saved %You can see what is saved in this structure

A_new = saved.A
B_new = saved.B

% Storage as a text file ( instead of binary )

save myfile.txt -ascii

clear saved
save myfile.txt -ascii

clear all

% REMARK: In Matlab the following commands are equivalent

varargin_function a b c   %command syntax
varargin_function 'a' 'b' 'c' %function syntax
varargin_function ('a','b','c') %function syntax

% The arguments are automatically packed in ' ' .
% In particular, the arguments must be all strings .
% % Command syntax vs Function syntax


% sin pi %doesn't work because is equiv with sin('pi')
% disp hello world % no because contains spaces but  disp 'hello world' works
disp 'hello world'