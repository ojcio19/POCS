function [dol,gora] = probkowanie( signal,level,t)
%%level     - odleglosc pomiedzy poziomami
%%t         - wektor czasu
%%signal    - sygnal wejsciowy

przedzial = 2*ceil(max(signal));        %znajduje maksymalna wartosc i od niej zaczyna podzial
ilosc_powtorzen = przedzial/level;      %liczba przedzialow

plot(t,signal);hold on;
dol = signal;                           %wstawiamy do b- sygnal
indeksy = 1;

for i= 0:ilosc_powtorzen+1
    index = find(abs(signal-przedzial/2+level/2+i*level)<=(level/2))';      %obliczamy numery indeksow na ktorych
    dol(index) = przedzial/2-level-i*level;                                 %przecina sie nasz sygnal z poziomami
    indeksy =[przecinanie(signal,t,przedzial/2-level-i*level) indeksy];     %funk. przecinanie oblicza indeksy 
end

indeksy= sort(indeksy);                                                     %sortujemy punkty przeciecia

gora= dol+level;                                                            %b+ obliczamy dodajac do dolu poziom
plot(t,dol,'k');hold on;
plot(t,gora,'g');
plot(t(indeksy),signal(indeksy),'ro');grid on;
hold off;grid on;

end

