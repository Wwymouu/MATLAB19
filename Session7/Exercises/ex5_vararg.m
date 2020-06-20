% Exercise 5
% Testing funciton mysum

[out1, out2, out3, out4]=mysum(1,2,3,6,6,5,4,7)

pause
[out1, out2, out3, out4]=mysum(1,2,3)

pause

%% Exercise 5b
%testing the function inception

f1=@(x) sin(x);
f2=@(x) cos(x);
f3=@(x) x.^2;
f4=@(x) exp(x);
xx=0:0.01:1;
yy=inception(f1,f2,f3,f4,xx);


%plotting the result
plot(xx,yy)
