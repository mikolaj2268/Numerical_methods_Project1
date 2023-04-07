function ret = Clenshaw(p,x)
% ret = Clenshaw(p,x)
% Algorytm Clenshawa do obliczania wartosci wielomianu reprezentowanego
% w bazie wielomianow Czebyszewa II-ego stopnia
% p - wektor wspolczynnikow a_k liniowej kombinacji wielomianow Czebyszewa
% x - punkt x, w którym chcemy obliczyc wartosc wielomianu
n = length(p) - 1;
b = zeros(n+2,1);
b(n+2) = 0;
b(n+1) = 0;
for j = n:-1:1
    b(j) = 2*x*b(j+1) - b(j+2) + p(j+1);
end
ret = 2*x*b(1) - b(2) + p(1); %wynik otrzymany algorytmem Clenshawa

