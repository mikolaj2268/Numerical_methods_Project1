function res = Simpson(p,a,b,n)
% res = simpson(f,a,b,n)
% Calkowanie Zlozona kwadratura Simpsona
% p - wektor wspolczynnikow a_k z liniowej kombinacji wielomianow
% Czebyszewa
% a,b - krance przedzialu calkowania
% n - ilosc podprzedzialow
res = zeros(length(n),2);
for i = 1:length(n)
    n_iter = n(i);
    h = (b-a)/n_iter;
    v1 = zeros(1,n_iter);
    v2 = zeros(1,n_iter);
    for j = 1:1:n_iter
        v1(j) = Clenshaw(p,a+(j-1)*h);
        v2(j) = Clenshaw(p,a+(j-1)*h+h/2);
    end
    res(i,1) = n_iter;
    res(i,2) = h/6*(Clenshaw(p,a) + Clenshaw(p,b) + 2*sum(v1(2:end)) + 4*sum(v2(1:end)));%obliczenie calki
end