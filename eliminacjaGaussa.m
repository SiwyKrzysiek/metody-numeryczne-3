function X = eliminacjaGaussa(A ,b)
%ELIMINACJAGAUSSA Summary of this function goes here
%   Detailed explanation goes here\
n = length(b)

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
A
b
end

