xx = 1:1000;

fig = figure();
for k = 1:2:5
    ff = values(0,2,k,1000);
    hold on
    plot(xx, ff)
end


legend('k =1','k=3','k=5')
savefig(fig,'visualisation_figure.fig')
pause
close()
