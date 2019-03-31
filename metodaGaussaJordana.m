function X = metodaGaussaJordana(A ,b)

n = length(b);

% Doprowadzenie do macierzy jednostkowej
for k = 1:n % Dla ka¿dej kolumny
    diag = A(k, k); % Element na diagonali
    
    if diag ~= 1
        for i = k:n
            A(k, i) = A(k, i) / diag;
        end
        b(k) = b(k) / diag;
    end
    
    for i = 1:n 
        if i ~= k % Dla ka¿dego elementu nad i pod diagonalem
            mul = A(i, k);
            for j = k:n % Dla ka¿dego elemetnu z aktualnego wiersza od elementu pod diag do koñca
                A(i, j) = A(i, j) - A(k, j)*mul;
            end
            % Zmiana b
            b(i) = b(i) - b(k)*mul;
        end
    end
end

X = b;

end

