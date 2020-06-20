function [ C ] = circscift_18(A,i,j)

[m,n]=size(A);
B=zeros(m,n);
C=zeros(m,n);
A
circshift(A,[i,j])
for k=1:m
     if (i+k>m)  
       B(k+i-m,:)=A(k,:);
     elseif (i+k<=m)
       B(k+i,:)=A(k,:);
     elseif (i+k-m>m)
       B(k+i-2*m,:)=A(k,:);
     end
    
end
for l=1:n
     if (j+l>n) 
       C(:,l+j-n)=B(:,l);
     elseif (j+l<=n)
       C(:,l+j)=B(:,l);
     elseif (j+l-n>n)
       C(:,j+l-2*n)=B(:,l);
     end
    
end

end

