%   3D line

x=linspace(0,2*pi,200);
y1=sin(x);
y2=cos(x);
plot3(x,y1,y2)

%%
[xx,yy]=meshgrid(x,x);
%replicates the grid vectors x and x to produce a full grid.
surf(xx,yy,sin(xx).*cos(yy))
%surf(X,Y,Z) uses Z for the color data and surface height. X and Y are
%vectors or matrices defining the x and y components of a surface. If X and Y are
%vectors, length(X) = n and length(Y) = m, where [m,n] = size(Z)
%%
%x=[1 2 3];
%y=[1 2 3];
%x.*y or x*y'

surf(peaks)
mesh(peaks)
%peaks is a function of two variables, obtained by translating and scaling Gaussian distributions
contour(peaks) %A contour plot displays isolines of matrix peaks.
pcolor(peaks) 
%  A pseudocolor plot is a rectangular array of cells with colors
%  determined by peaks