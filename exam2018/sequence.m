nmax = 10;
ns = 1:nmax;
a = zeros(nmax,1);
a(1) = 1;
for i = 2:nmax
    a(i) = 1/(1+0.5*a(i-1));
end

%plot
fig1 = figure()
plot(ns, a,'o')
title('sequence')
xlabel('n')
savefig(fig1,'sequence_plot.fig')
pause
close()
