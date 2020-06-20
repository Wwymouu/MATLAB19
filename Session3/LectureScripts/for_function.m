function [ y ] = for_function(z)
for k=1:z
    y=k+1;
    if y==5
        display('We achived the value y=5')
        continue;
    end
    if y==9
        disp("we achived value 9")
        break;
    else
        display('y is not 9')
    end
end
end