function res = CoefficientsExact(p)
% res = CoefficientsExact(p)
% Funkcja zwracajaca wspolczynniki wielomianu w postaci naturalnej
% p - wektor wspolczynnikow a_k z liniowej kombinacji wielomianow
% Czebyszewa
syms x
res = 0;
n = length(p);
for i = 1:n
    res = res + p(i)*chebyshevU(i-1,x); 
end
res = sym2poly(res);