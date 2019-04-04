function X = metodaLUZwyborem(A, b)
%METODALU Rozwiazuje uklad metoda LU z wyborem elementu glownego

[L, R, zmiany] = rozkladLUZwyborem(A);

n = length(zmiany);
for i = 1:n
    b = zamianaWierszyPojedynczaMacierz(b, zmiany(i, 1), zmiany(i, 2));
end

y = rozwiazUkladL(L, b);
X = rozwiazUkladR(R, y);

end

