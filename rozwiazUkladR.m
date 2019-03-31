function x = rozwiazUkladR(R, y)
%ROZWIAZUKLADL Rozwi¹zuje uk³ad równañ macierzowych postaci Rx = y
%   R jest macierz¹ górno trójk¹tn¹ ze zwyk³ymi wartoœciami na diagonali

n = length(R);
x = zeros(n, 1);

for i = n:-1:1
   suma = 0;
   for j = (i+1):n
      suma = suma + R(i, j)*x(j);
   end
   
   x(i) = (y(i) - suma) / R(i, i);
end

end

