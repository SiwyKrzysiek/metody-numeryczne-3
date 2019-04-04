function [wartosc, pozycja] = znajdzMax(wektor)
%ZNAJDZMAX Wyszukuje maksymalna wartoœæ w wektorze co do modulu
%   Detailed explanation goes here
n = length(wektor);

if n == 0
    wartosc = -1;
    pozycja = -1;
else
    wartosc = modul(wektor(1));
    pozycja = 1;
    for i = 2:n
       if  modul(wektor(i)) > wartosc
           wartosc = modul(wektor(i));
           pozycja = i;
       end
    end
end


end

