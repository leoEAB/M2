% RUECKWAERTS berechnet die Vorwärtsrekursion
%   z = RUECKWAERTS(LR,z) löst R*x=z
%   Eingabe:
%       LR      (n x n) Matrix mit L*R = P*A
%               R: obere Dreiecksmatrix mit Diagonale
%               L: untere Dreiecksmatrix (Diagonale mit Einsen)
%       z       (n x 1) Vektor der rechten Seite des LGS
%   Ausgabe:
%       x       (n x 1 ) Vektor Lösung des LGS R*x=z
%
function x=rueckwaerts(LR,z)
n = length( z );
z(n) = z(n) / LR(n,n);
for j = n-1 : -1 : 1
z(j) = ( z(j) - LR( j,j+1:n ) * z( j+1:n ) ) / LR(j,j);
end
x = z;
end

