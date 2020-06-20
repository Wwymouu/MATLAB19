%% Test circshift
A= [1,2,3,4,5]+[0,5,10,15]';

shiftx=2;
shifty=3;
circshift(A,[shiftx,shifty])
my_circshift(A,shiftx,shifty)
my_circshift2(A,shiftx,shifty)
my_circshift3(A,shiftx,shifty)



shiftx=9;
shifty=10;

circshift(A,[shiftx,shifty])

try
    my_circshift(A,shiftx,shifty)
catch me
    disp('my_circshift is not working')
end


try
    my_circshift(A,shiftx,shifty)
catch me
    disp('my_circshift2 is not working')
end

try
    my_circshift3(A,shiftx,shifty)
catch me
    disp('my_circshift3 is not working')
end

