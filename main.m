%% Testy Gauss
clc
A = [2 1 5 -1.5; 5 3 2 4 ; -2 3 2 -4; 4.5 3 5 2];

b = [1.7 47.3 -46.4 34.95]';

X = eliminacjaGaussa(A, b);

%% Testy LU
clc
A = [2 1 5 -1.5; 5 3 2 4 ; -2 3 2 -4; 4.5 3 5 2];

b = [1.7 47.3 -46.4 34.95]';

x = metodaLU(A, b);

%% Testy Gaussa-Jordana
clc
A = [1 2 3; 4 3 -1; 1 -1 1];

b = [14 7 2]';

y = metodaGaussaJordana(A, b);

%% Testy odwracania GJ
A = [8 5; 13 8];
y2 = odwracanieMetodaGaussaJordana(A);