function A = zamianaWierszyPojedynczaMacierz(A, numerWierszaA, numerWierszaB)
%ZAMIANAWIERSZYPOJEDYNCZAMACIERZ Zamiana wierszy w pojedynczej macierzy
%   Detailed explanation goes here

x = numerWierszaA;
y = numerWierszaB;
n = length(A);

tmp = A(x, :);
A(x, :) = A(y, :);
A(y, :) = tmp;


end

