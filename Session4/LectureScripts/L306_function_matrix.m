%%
f=@(x) x.^5-4.*x+1;
A=function_matrix(f,0,1,100);
figure()
plot(A(:,1),A(:,2))


%%

g=@(x) exp(1i*x/10);
B=function_matrix(g,0,1,100);
figure()
plot(B(:,1),B(:,2))
