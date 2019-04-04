function [A, zmiany] = wyborElemetnuGlownegoCalosci(A)
%WYBORELEMETNUGLOWNEGOCALOSCI Ustaiwa elemetny głowne na diagonali całej
%macierzy. Wwracana jest przetworzona macierz i wykonane zmiany
%   Detailed explanation goes here
n = length(A);
zmiany = zeros(n, 2);

for k = 1:n
    doDolu = A(k:n, k);
    
    [~, indexMaksa] = znajdzMax(doDolu);
    indexMaksa = indexMaksa + k - 1;
    
    A = zamianaWierszyPojedynczaMacierz(A, k, indexMaksa);
    zmiany(k, :) = [k, indexMaksa];
end

end

