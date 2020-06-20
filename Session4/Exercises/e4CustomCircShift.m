function y=e4CustomCircShift(x,n,m)
% Custom circshift function

% Shifting a matrix by its size is not shifting it; this also
% solves the issue of negative shift
n=mod(n,size(x,1));
m=mod(m,size(x,2));

% we take the last rows first (as they wrap up), then we apppent
% the first rows, wich are shifted down; same for the columns
y0=[x(n+1:end,:);x(1:n,:)];
y=[y0(:,m+1:end),y0(:,1:m)];
end