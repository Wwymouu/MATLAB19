close all
clear all
clc

disp('ex a')

x=-1:0.05:1; %vector of x
f=x.^2-.5; %vector of y
fig=figure;
plot(x,f,'r--')  
title('f=x.^2-.5');

%save the function in different ways and formats
savefig('first_function0')
savefig(fig, 'first_function1')
saveas(fig,'first_function2')
saveas(fig,'first_function3','eps')
pause
close

%%
%plot the function f=sin(s*x) in different colors with legend

disp('ex b')
%xs
x=linspace(0,2*pi, 1000);

%colors
colors = ['b','g','r','y'];
%doing 4 plots with different colors and functions
for s=1:4
    y=sin(s*x);
    figure;
    plot(x,y,'Color',colors(s));
    legend( sprintf('s = %f', s) );
    
end
pause
close all

%%
%plot the function f without lines but as little black circles centered in
%x=n/10

disp('ex c')
n=(0:1000) /100; 
g=sin(2*pi*n);
figure;
scatter(n,g,'k')
pause
close all