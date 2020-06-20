%exercise 11
A=reshape((1:20),4,5)';
B=ref_20(A, 10^(-11))

C=rref(A)

sum(abs(B(:)-C(:))) < 10^-10