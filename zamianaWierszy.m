function [A, b] = zamianaWierszy(A , b, numerWierszaA, numerWierszaB)
%ZAMIANAWIERSZY Zamienia wiersze A i B w macierzach stanowi¹cych równanie
%   Detailed explanation goes here
x = numerWierszaA;
y = numerWierszaB;
n = length(A);

tmp = A(x, :);
A(x, :) = A(y, :);
A(y, :) = tmp;

tmp = b(x);
b(x) = b(y);
b(y) = tmp;


end

