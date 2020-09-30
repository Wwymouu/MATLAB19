function [a, b] = mistery()
    load mistery_vector.mat mistery_vect
    a = sum(mistery_vect == 0);
    b = mode(mistery_vect);
end
    
