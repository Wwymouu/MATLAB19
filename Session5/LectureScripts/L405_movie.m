x=linspace(0,2*pi,50);
y=sin(x);
clear M
n=60;
for k=1:n
    plot(x,y*sin(pi* k/n))
    axis([0,2*pi,-1,1])
    M(k)=getframe;
end
movie(M,2)

%%
writerObj =VideoWriter('myvid.avi');
open(writerObj);
for k=1:n
plot(x,y*sin(2*pi* k/n))
axis([0,2*pi,-1,1])
writeVideo(writerObj, getframe)
end
close(writerObj)