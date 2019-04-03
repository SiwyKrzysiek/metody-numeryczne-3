function X = metodaLU(A, b)
%METODALU Rozwi�zuje uk�ad r�wna� metod� LU

[L, R, P] = rozkladLU(A);
y = rozwiazUkladL(L, b, P);
X = rozwiazUkladR(R, y);

end

