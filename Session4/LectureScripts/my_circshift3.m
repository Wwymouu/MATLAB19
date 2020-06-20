function [ B ] = my_circshift3(A,i,j)

[m,n]=size(A);
B=zeros(m,n);

for k=1:m
    for r=1:n
        B(mod(k+i-1,m)+1,mod(r+j-1,n)+1)=A(k,r);
    end
end
end

