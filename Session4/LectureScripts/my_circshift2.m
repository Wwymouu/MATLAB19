function [ C ] = my_circshift2(A,i,j)

[m,n]=size(A);
B=zeros(m,n);
C=zeros(m,n);

B(i+1:m,:)=A(1:m-i,:);
B(1:i,:)=A(m-i+1:m,:);

C(:,j+1:end)=B(:,1:n-j);
C(:,1:j)=B(:,n-j+1:n);

end

