function y = rozwiazUkladL(L, b, P)
%ROZWIAZUKLADL Rozwi¹zuje uk³ad równañ macierzowych postaci Ly = Pb
%   L jest macierz¹ dolno trójk¹tn¹ z 1 na diagonali

n = length(L);
b2 = zeros(n, 1);
y = zeros(n, 1);

for i = 1:n
    b2(i) = b(P(i));
end
b
b2
P

for i = 1:n
   suma = 0;
   for j = 1:(i-1)
      suma = suma + L(i, j)*y(j);
   end
    
   y(i) = (b2(i) - suma) / L(i, i);
end

end

