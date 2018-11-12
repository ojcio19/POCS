function [ t,wartosci ] = signalin( ilosc,fs )
%funkcja liczaca sygnal wejsciowy
%przykladowa suma sinusow 

T = 1/fs;
t = 0:T:1-T;        %przedzial t <0,1-Ts>

wartosci=0;         %zerujemy wartosc poczatkowa
for i =1:ilosc
    wartosci = wartosci + sin(2*pi*t*i);
end

end


