function y = rozwiazUkladL(L, b)
%ROZWIAZUKLADL Rozwi¹zuje uk³ad równañ macierzowych postaci Ly = b
%   L jest macierz¹ dolno trójk¹tn¹ z 1 na diagonali

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

