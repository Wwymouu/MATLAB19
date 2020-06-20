function C = checkerboard2(n)

A=rand(n,n);

C=zeros(n);
for j=1:n
    for k=1:n
        if mod(j+k,2)==0
            C(j,k)=A(j,k);
        end
    end
end

end