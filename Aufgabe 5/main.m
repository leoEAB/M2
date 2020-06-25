f = @(t, y) (2*t)/(y^2);
tspan = [0 3];
n = 100
y0 = 1;
fun = @(t) (3*t^2+1)^(1/3);

    [a,b] = euler_verfahren(f,tspan,y0,n);
    for I = 1:n
        fehler(I) = abs(b(I) - fun(a(I)));
    end
fehler