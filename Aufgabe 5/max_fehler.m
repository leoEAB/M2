function f_max = max_fehler(t, y)
    fun = @(x) (3*x^2+1)^(1/3);
    f = zeros(1, length(t));
    for i = 1:t 
        f = abs(y(i) - fun(t(i)));
    end
    f_max = max(f);
end