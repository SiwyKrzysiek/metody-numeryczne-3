function X = metodaLU(A, b)
%METODALU Rozwi¹zuje uk³ad równañ metod¹ LU

[L, R, P] = rozkladLU(A);
y = rozwiazUkladL(L, b, P);
X = rozwiazUkladR(R, y);

end

