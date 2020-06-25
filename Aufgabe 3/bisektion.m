
function [xbar,x] = bisektion(f,a,b,tol,nmax)
    n = 1;
    while(((a-b) < tol) && (n <= nmax))
        x(n) = ((a + b)./2);
        if (f(a)*f(x(n)) < 0)
            b = (n);
        elseif (f(a)*f(x(n)) > 0)
            a = x(n);
        end
        n = n+1;
    end

    xbar = x(n-1);

    
end