%% Testy Gauss
clc
A = [2 1 5 -1.5; 5 3 2 4 ; -2 3 2 -4; 4.5 3 5 2];

b = [1.7 47.3 -46.4 34.95]';

X = eliminacjaGaussa(A, b);

%% Testy LU
clc
A = [2 1 5 -1.5; 5 3 2 4 ; -2 3 2 -4; 4.5 3 5 2];

b = [1.7 47.3 -46.4 34.95]';

[L, R] = rozkladLU(A);
L
R