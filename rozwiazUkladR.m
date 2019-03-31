function x = rozwiazUkladR(R, y)
%ROZWIAZUKLADL Rozwi�zuje uk�ad r�wna� macierzowych postaci Rx = y
%   R jest macierz� g�rno tr�jk�tn� ze zwyk�ymi warto�ciami na diagonali

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

