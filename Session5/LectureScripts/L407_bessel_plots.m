%plot the first 4 bessel functions 1st and 2nd type
% the first and second function plot it in an array of plot of type 1x2
close all
clear all
clc

% preparing a grid of points
x=0.2:0.2:20;

%for every bessel function from 0 to 3 we loop
for k = 0:3
    if k~=2
        %for k=2 we don't need another figure, because it will go in plot
        %of k =1
        figure()
    end
    %for k=1,2 we want to put them in the respective subplot
    if k==1 || k==2
        subplot(1,2,k)
    end
    %two different types of bessel functions
    y=besselj(k,x);
    z=bessely(k,x);
    hold on %to plot both functions
    plot(x,y)
    plot(x,z)
    axis([0 20, -1, 1])
    legend('1st type','2nd type')
    title(strcat('bessel',int2str(k)))
    hold off
end
