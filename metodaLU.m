function X = metodaLU(A, b)
%METODALU Rozwi¹zuje uk³ad równañ metod¹ LU

[L, R] = rozkladLU(A);
y = rozwiazUkladL(L, b);
X = rozwiazUkladR(R, y);

end

