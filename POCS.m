function [  ] = POCS( level,licznik,ilosc_sin )
%np POCS(0.3,4,3)
if(level>0.15 && ilosc_sin<10)
    [t,y]=signalin(ilosc_sin,4000);     %czestotliwosc = 2000Hz
    figure(1)
    [bminus,bplus]=probkowanie(y,level,t);
    figure(2);
    krzywa = PIu( t,y,level,bplus,bminus);
    close(2)
    figure(3)
    koncowy = PBu( t,y,krzywa);
    close(3)
    figure(4);
    krzywa1 = PIu( t,y,level,bplus,bminus,koncowy);      %kolejna iteracja petli
    close(4)
    figure(5)
    koncowy1 = PBu( t,y,krzywa1);
    %%
    %przykladowy blad
    error = (abs(koncowy-y)).^2;
    error1 = (abs(koncowy-y)).^2;
    figure(6)
    plot(t,error,'r',t,error1,'k')
    
else
    disp('it doesnt work');
end
end

