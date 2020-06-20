%%
z=10;
while z<12
    r= for_fct(z);

    if r==10
        disp('r is 10');
    elseif r==9
        disp('r is 9')
    end
    z=z+1;

end

function [ y ] = for_fct(z)
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