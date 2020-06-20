xx = linspace(0,pi,100);
ff = sin(xx);
fig = figure()
plot(xx,ff)
xlabel('time [t] = s')

savefig(fig,'periodic.fig')
pause
close()
