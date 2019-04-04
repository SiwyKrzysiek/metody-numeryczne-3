function [L ,R, zmiany ] = rozkladLUZwyborem(A)
%ROZKLADLUZWYBOREM Rozklad LU z wyborem elemetnu glownego zwraca rowniez
%zmiany, ktore musza byc wykonane na wektorze b

[A, zmiany] = wyborElemetnuGlownegoCalosci(A);
[L, R] = rozkladLU(A);

end

