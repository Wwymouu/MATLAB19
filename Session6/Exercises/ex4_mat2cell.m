%mat2cell Convert array to cell array with potentially different sized cells

A=[2,3, 5, 7;11,2,5,7; 6, 7,7,8];
B=mat2cell(A, [1 2], [2 1 1]) %split the rows into 1 and 2 and the columns into 2 1 1 
