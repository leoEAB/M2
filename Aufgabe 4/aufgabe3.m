function [stoer, R_stoer, kabs, krel] = aufgabe3(stoer)
    A = 3.354016 * 10^(-3);
    B = 2.993410 * 10^(-4);
    C = 2.13513 * 10^(-12);
    D = -8.05672 * 10^(-7);
    R_ref = 47;
    T = 20;
    T_stoer = T .*(1+stoer);
    T_kel = T + 273.15;
    T_stoer_kel = T_stoer + 273.15;
    f_og = @(R) A + B.*log(R./R_ref) + C.*(log(R./R_ref)).^2 + D.*(log(R./R_ref)).^3 - 1./T_kel; 
    f_stoer = @(R) A + B.*log(R./R_ref) + C.*(log(R./R_ref)).^2 + D.*(log(R./R_ref)).^3 - 1./T_stoer_kel;

    x0 = [1 100];
    R_og = fzero(f_og, x0);
    R_stoer = fzero(f_stoer, x0);
    kabs = abs(R_stoer - R_og)./abs(T_stoer - T);
    krel = abs(R_stoer - R_og)./(abs(R_og).*stoer);
end