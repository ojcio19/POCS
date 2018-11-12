function ind = przecinanie(S,t,level)

% odwracamy wektory
t = t(:)';
S = S(:)';

% przesuwamy poziom
S   = S - level;

% szukamy pasujacych
ind0 = find( S == 0 ); 

% chytrze przemnazamy uzyskujac to co chcielismy
S1 = S(1:end-1) .* S(2:end);
ind1 = find( S1 < 0 );

% posortowane ladnie
ind = sort([ind0 ind1]);

end