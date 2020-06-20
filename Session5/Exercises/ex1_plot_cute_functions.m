close all
clear all
clc

% create some x points and computing f and g of these points
xx=0:0.01:1;
ff = exp(xx/10).*sin(2*pi*xx);
gg = log(3+xx).*cos(4*pi*xx);

%plotting on the figure f and g with specific color, style
fig=figure()
hold on  %need hold on to plot 2 things on the same plot
plot(xx,ff, 'r--')
plot(xx,gg, 'b-.')
hold off
title('Cute functions') 
axis([0,1, -2, 2])
legend('Marc', 'John')
xlabel('Time')
ylabel('Money')
savefig(fig, 'my_cute_functions') %saving the plot as .fig file
pause % pause to see the figure waiting for an input of the user
close() %closing the picture
