% DIVDIF berechnet die dividierten Differenzen
%   Eingabe:
%       x   (n x 1) Vektor der Stützstellen x1,x2,...,xn
%       y   (n x 1) Vektor der Stützwerte y1,y2,...yn
%   Ausgabe
%       D   (n x 1) Vektor der dividierten Differenzen
%           f[x1] f[x1 x2] ... f[x1 x2 ... xn]
%
function D = divdif(x,y)
    m = length(x);
    D_matrix = zeros(m,m);
    D = zeros(m, 1);
    D_matrix(:, 1) = y;
    for i=2:m
        for k=i:m
            D_matrix(k,i) = (D_matrix(k,i-1)-D_matrix(k-1,i-1))/(x(k)-x(k+1-i));
        end
    end
    D = diag(D_matrix);
end    