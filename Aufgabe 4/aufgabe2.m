function [a_stoer, x_stoer, kabs, krel] = aufgabe2(stoer)
    a = 0.1;
    a_stoer = a .*(1+ stoer);
    f_og = @(x) (x.^2 + 6).*exp(x) - a;
    f_stoer = @(x) (x.^2 + 6).*exp(x) - a_stoer;
    x0 = [-4 -10];
    x_og = fzero(f_og, x0);
    x_stoer = fzero(f_stoer, x0);
    kabs = abs(x_og - x_stoer)./abs(a - a_stoer);
    krel = abs(x_og - x_stoer)./(abs(x_og) *stoer);
end