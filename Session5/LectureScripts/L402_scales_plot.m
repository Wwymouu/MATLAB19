close all

n_pts=1000;
xx=linspace(0.01, 100,n_pts);

functs=zeros(n_pts, 4);
functs(:,1)=exp(3*xx);
functs(:,2)=xx.^xx;
functs(:,3)=log(xx);
functs(:,4)=3*xx;

for k= 1:4
    figure(1)
    plot(xx,functs(:,k))
    title('plot')
    figure()
    semilogx(xx,functs(:,k))
    title('semilogx')
    figure()
    semilogy(xx,functs(:,k))
    title('semilogy')
    figure()
    loglog(xx,functs(:,k))
    title('loglog')
    pause
end