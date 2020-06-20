n = 10;
% Erzeuge n Zufallszahlen in [0, 1] und sortiere diese aufsteigend
A = rand(n, 1)
for k = 1 : n
  % finde das kleinste Element in den hinteren n-k+1 Elementen
  kli = k;
  kl = A(k);
  for l = k + 1 : n
    if A(l) < kl
      kli = l;
      kl = A(l);
    end
    l=l+1;
  end
  % verschiebe das kleinste Element an die k-te Stelle
  for l = kli-1 : -1 : k  %%here is the error
    A(l+1 ) = A(l);
  end
  A(k) = kl;
end
A


