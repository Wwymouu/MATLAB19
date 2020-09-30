xx = 0:0.01:1;
color = ['r','b','g','y','m'];
fig = figure()
for k =1:5
    ff = k*sqrt(2).*exp(-k*xx).*cos(pi/4+k*xx);
    plot(xx,ff,'color',color(k))
    %legend( sprintf('k = %f', k) );
    hold on
end
legend('k=1','k=2','k=3','k=4','k=5')
title('all the functions')
savefig(fig, 'plotted_functions.fig')
pause
close()