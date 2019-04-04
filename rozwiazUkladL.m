function y = rozwiazUkladL(L, b)
%ROZWIAZUKLADL Rozwi�zuje uk�ad r�wna� macierzowych postaci Ly = b
%   L jest macierz� dolno tr�jk�tn� z 1 na diagonali

n = length(L);
y = zeros(n, 1);

for i = 1:n
   suma = 0;
   for j = 1:(i-1)
      suma = suma + L(i, j)*y(j);
   end
    
   y(i) = (b(i) - suma) / L(i, i);
end

end

