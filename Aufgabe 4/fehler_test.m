function [kabs,krel] = fehler_test(stoer)
    x = 2;
    x_f = 2 + (2 * stoer);
    e_abs = abs(x_f - x);
    e_rel = e_abs./2;

    kabs = abs(1./sqrt(x_f)-1./sqrt(x))./e_abs;
    krel = abs(1./sqrt(x_f)-1./sqrt(x))./(e_rel * abs(1./sqrt(x)));
end