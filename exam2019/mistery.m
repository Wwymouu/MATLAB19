%Ex 5.1
function [N, Px, Py] = mistery()
   load('mistery_content.mat','MisteryMat')
    x = MisteryMat(:,1);
    y = MisteryMat(:,2);
    N = 0;
    Px = 0;
    Py = 0;
    for i = 1:size(x)
        r = sqrt((x(i)-2)^2+(y(i)-2)^2);
        if  r <= 2
            N = N+1;
        end
        if y(i) == 0
            Px = Px + 1;
        end
        if x(i) == 0
            Py = Py+1;
        end
    end
end

    
