function X = eliminacjaGaussa(A ,b)
%ELIMINACJAGAUSSA Summary of this function goes here
%   Detailed explanation goes here\
n = length(b);

% Doprowadzenie do macierzy trójk¹tnej
for k = 1:n % Dla ka¿dej kolumny
    diag = A(k, k); % Element na diagonali
    for i = (k+1):n % Dla ka¿dego elementu pod diagonalem
        mul = A(i, k) / diag;
        for j = k:n % Dla ka¿dego elemetnu z aktualnego wiersza od elementu pod diag do koñca
            A(i, j) = A(i, j) - A(k, j)*mul;
        end
        % Zmiana b
        b(i) = b(i) - b(k)*mul;
    end
end

%Policzenie x-ów
X = zeros(n, 1);
for i = n:-1:1
   suma = 0;
   for j = (i+1):n
      suma = suma + A(i, j) * X(j);
   end
   X(i) = (b(i) - suma) / A(i, i);
end
end

