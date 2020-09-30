load mistery_vector.mat mistery_vect
mis_new = reshape(mistery_vect,400,640);
fig = figure()
spy(mis_new)
savefig(fig, 'mistery_figure.fig')
pause
close()
