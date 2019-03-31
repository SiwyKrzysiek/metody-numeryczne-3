function [L, R] = rozkladLU(A)
%ROZKLADLU Metod¹ Doolittle'a
%   Tworzy macierze L i R dolno i górno trójk¹tne, takie ¿e A = L*R

% Wersja z dodatkowymi macierzami (mo¿na te¿ nadpisywaæ A)
n = length(A);

L = diag(ones(1, n));
R = zeros(n);

R(1, :) = A(1, :);
L(2:n, 1) = A(2:n, 1) / R(1,1);

for k = 2:n
   for i = k:n
       suma = 0;
       for j = 1:(k-1)
          suma = suma + L(k, j)*R(j, i);
       end
       
       R(k, i) = A(k, i) - suma;
   end
   for i = k:n
       suma = 0;
       for j = 1:(k-1)
          suma = suma + L(i, j)*R(j, k);
       end
       
       L(i, k) = (A(i, k) - suma) / R(k, k);
   end
end


end

