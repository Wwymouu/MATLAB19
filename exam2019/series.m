nmax = 10;
ns = 1:nmax;
A(1) =  1;
fig = figure()
for k = 2:nmax
    A(k) =A(k-1)+1/k-1/(k+2);
end
scatter(ns,A)
title('sum of the first 10 values')
xlabel('k')
savefig(fig, 'series_plot.fig')
pause
close()