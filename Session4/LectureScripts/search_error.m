n = 10;
% Generate a vector of n random numbers between 0 and 1 and sort them in
% increasing order
A = rand(n, 1)
for k = 1 : n
  % find the smallest element in the last n-k+1 elements
  kli = k;
  kl = A(k);
  for l = k + 1 : n
    if A(l) < kl
      kli = l;
      kl = A(l);
    end
  end
  % move the smallest element in the k-th position and shift all the rest
  % down by one element
  for l = kli : -1 : k
    A(l + 1) = A(l);
  end
  A(k) = kl;
end
A