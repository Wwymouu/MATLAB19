%Ex4.2
function [I, E] = montecarlo(n)
    x = pi*rand(n,1);
    y = sin(x);

    I = pi*mean(y);
    E = abs(I-2);
end
% When n -> 0, I converges to 2, E converges to 0