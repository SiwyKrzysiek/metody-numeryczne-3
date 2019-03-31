function X = metodaLU(A, b)
%METODALU Rozwi�zuje uk�ad r�wna� metod� LU

[L, R] = rozkladLU(A);
y = rozwiazUkladL(L, b);
X = rozwiazUkladR(R, y);

end

