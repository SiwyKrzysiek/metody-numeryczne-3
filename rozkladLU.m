function [L, R, P] = rozkladLU(A)
%ROZKLADLU Metod� Doolittle'a
%   Tworzy macierze L i R dolno i g�rno tr�jk�tne, takie �e P*A = L*R

% Wersja z dodatkowymi macierzami (mo�na te� nadpisywa� A)
n = length(A);

L = diag(ones(1, n));
R = zeros(n);
P = 1:n;

%R(1, :) = A(1, :);
%L(2:n, 1) = A(2:n, 1) / R(1,1);

for k = 1:n
   % znajd� indeks elementu gl�wnego
   [~, indeksElementuGlownego] = max(A(k:n, k));
   indeksElementuGlownego = k + indeksElementuGlownego - 1;
   
   % przenie� elemen g�owny na pocz�tek
   tmp = A(k, :);
   A(k, :) = A(indeksElementuGlownego, :);
   A(indeksElementuGlownego, :) = tmp;
   A
   
   tmpIndeks = P(k);
   P(k) = P(indeksElementuGlownego);
   P(indeksElementuGlownego) = tmpIndeks;
   P
   
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
   
   R
   L
end
L
R
P

end

