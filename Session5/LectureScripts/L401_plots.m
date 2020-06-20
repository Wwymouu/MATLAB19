
%plot of vectors

x=linspace(0,2*pi,200);
y1=sin(x);
y2=cos(x);
plot([y1',y2']) 
plot(y1)
plot(y2)
plot(x,[y1',y2']) %plots in the same figure two functions
% or
plot(x,y1,x,y2)   %plots in the same figure two functions

plot(y1,y2)       %plots a circle centered at the point (0,0)
plot([y1;y2])
legend('sin','cos')
title('Plot sin-cos')
plot(x,y1,'r*-',x,y2,'k:') %more details in help plot
xlabel('x-label')
ylabel('y-label')

axis([0,2*pi,-1.5,1.5])

%saving pictures
fig = figure()
plot(0:0.1:2*pi, sin(0:0.1:2*pi))
savefig('my_filename0')
savefig(fig, 'myfilename1')
saveas(fig, 'myfilename2.jpg')

%more plots in a system of coordinates
plot(x,y1);
hold on 
plot (x,y2);
hold off

%more plots in different systems of cordinates

figure(1)
plot(x,y1);
figure(2)
plot(x,y2);

%subplots in a figure

subplot(1,2,1) %divides the current figure into an 1-by-2 grid
plot(x,y1)
title('sin')
subplot(1,2,2)
plot(x,y2)
title('cos');

clf
% clf deletes from the current figure all graphics objects whose handles are not hidden
close
figure(1)
figure(2)
close all

%bar graph
bar(rand(1,10))
close

%pie chart
pie(rand(1,5))
pie(rand(1,4),[0,0,1,0]) %Offset the third pie slice by setting the corresponding explode element to 1.
pie3(rand(1,5)) %3D pie chart
close

scatter(y1,y2) 

scatter(0:0.5:7, sin(0:0.5:7))
%creates a scatter plot with circles at the locations specified by the vectors x and y






