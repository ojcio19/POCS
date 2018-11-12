function dopasowanie = PBu( t,wartosci,PIu)
%Obliczanie (PBu)(t)
%nalezy przemozyc sygnal przez filtr (designfilt ->projektowanie filtru) np Pass=0.0045;Stop=0.015;Passband=1;

	d = designfilt('lowpassfir','PassbandFrequency',0.0045,'StopbandFrequency',0.015,'PassbandRipple',1,'StopbandAttenuation',60,'DesignMethod','equiripple');
	dopasowanie = filtfilt(d,PIu);		%funkcja liczaca przefiltrowany sygnal
	plot(t,dopasowanie,'g',t,PIu,'r',t,wartosci);

end

