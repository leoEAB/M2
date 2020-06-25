% HORNER_SCHEMA wertet Polynom in Newton-Form aus
%   Eingabe:
%       x   (n x 1) Vektor der Stützstellen x1,x2,...,xn
%       D   (n x 1) Vektor der dividierten Differenzen
%           f[x1] f[x1 x2] ... f[x1 x2 ... xn]
%       t   (N x 1) Vektor der Auswertpunkte
%   Ausgabe
%       y   (N x 1) Vektor der Funktionswerte an t
%
function y = horner_schema(x,D,t)
    n = length(D);
    m = length(t);
    r = zeros(n,m);
    r(n,:) = D(n);
    y = zeros(m,1);
    for I = 1:m
        for k = (n-1):-1:1
            r(k,I) = r(k+1,I) * (t(I)-x(k))+D(k);
        end
    y(I) = r(1,I);
    end
end