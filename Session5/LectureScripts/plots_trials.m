x=linspace(0.01,100, 1000);

f=@(x) exp(3*x);
g=@(x) x.^x;
h=@(x) log(x);
j=@(x) 3*x;


figure()
subplot(2,2,1)
plot(x,f(x));
subplot(2,2,2)
plot(x,g(x));
subplot(2,2,3)
plot(x,h(x));
subplot(2,2,4)
plot(x,j(x));
