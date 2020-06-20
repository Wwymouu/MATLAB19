function [x,y,z] = age(c)
    birth = datenum(c);
    datenow = floor(now);
    yold = datenow - birth;
    [x, y, z] = datevec(yold);
end