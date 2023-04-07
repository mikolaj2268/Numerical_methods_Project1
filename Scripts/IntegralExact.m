function res = IntegralExact(p,a,b)
% res = IntegralExact(p,a,b)
% Funkcja zwracajaca dokladna wartosc calki na przedziale (a,b) dla p
% a, b - granice calkowania
% p - wektor wspolczynnikow a_k z liniowej kombinacji wielomianow
% Czebyszewa
coeff = CoefficientsExact(p);
q = polyint(coeff);
res = diff(polyval(q,[a b]));
