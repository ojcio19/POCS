function krzywa = PIu( t,wartosci,level,bplus,bminus,pbu)
%Obliczanie (PIu)(t)
%w przypadku gry jest to pierwsza iteracja nargin=5 dopasowanie do b- oraz b+
%dla nargin=6 kolejne iteracje 

krzywa = 0;

switch nargin
    case 5
        %probkowanie( wartosci,0.3,t)
        hold on;
        for i = 1:length(wartosci)
            if(wartosci(i)>=level/2)
                krzywa(i) = bplus(i);
            elseif(wartosci(i)<=-level/2)
                krzywa(i) = bminus(i);
            else
                krzywa(i) = 0;
            end
        end
        plot(t,krzywa,'r',t,wartosci)
    case 6
        dopasowanie = pbu;
        for i = 1:length(wartosci)
            if(pbu(i)<bminus(i))
                krzywa(i) = bminus(i);
            elseif(pbu(i)>bplus(i)) 
                krzywa(i) = bplus(i);
            elseif (pbu(i)>bminus(i)) && (pbu(i)<bplus(i))
                krzywa(i) = pbu(i);
            else
                krzywa(i) = 0;
            end
        end
        plot(t,krzywa,'r',t,wartosci)
    otherwise
        disp('cos nie dziala w PIu');
end

end