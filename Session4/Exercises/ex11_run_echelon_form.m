%exercise 11
A=reshape((1:20),4,5)';
B=my_row_echelon_form(A, 10^(-11))

C=rref(A)

sum(abs(B(:)-C(:))) < 10^-10