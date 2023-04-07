function ret = NewtonApprox(p, a, b, n)
    ret = [length(n),2];
    for i = 1:length(n)
        n_iter = n(i);
        h = (b-a)/n_iter;
        m = n_iter/3;
        v1 = zeros(1,m);
        v2 = zeros(1,m);
        for j = 1:1:m
            v1(j) = Clenshaw(p,a+(3*(j)-2)*h) + Clenshaw(p, a+(3*(j)-1)*h);
            v2(j) = Clenshaw(p,a+3*(j)*h);
        end
        ret(i,1) = n_iter;
        ret(i,2) = (3/8)*h*(Clenshaw(p,a) + 3*sum(v1(1:end)) + 2*sum(v2(1:m-1)) + Clenshaw(p,b));
    end