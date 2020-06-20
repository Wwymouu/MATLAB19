clear all;
close all;
clc
load('mistery_content.mat', 'MisteryMat')

ReshapedMat = reshape(MisteryMat,108,91);
save('SpyMatrix.mat','ReshapedMat')

fig = figure();
spy(ReshapedMat)
savefig(fig, 'mistery_solved.fig')
pause
close()
