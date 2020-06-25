% RUECKWAERTS berechnet die Vorwärtsrekursion
%   x = RUECKWAERTS(LR,z) löst R*x=z
%   Eingabe:
%       LR      (n x n) Matrix mit L*R = P*A
%               R: obere Dreiecksmatrix mit Diagonale
%               L: untere Dreiecksmatrix (Diagonale mit Einsen)
%       z       (n x 1) Vektor der rechten Seite des LGS
%   Ausgabe:
%       x       (n x 1 ) Vektor Lösung des LGS R*x=z
%
function x=rueckwaerts(LR,z)
    [nRows, nCol] = size(LR);
    R = zeros(nRows, nCol);
    %R trennen
    for i=1:nCol
       R(i, i:nCol) = LR(i, i:nCol);
    end
    % z errechnen
    
    x(nCol) = z(nCol)/R(nCol, nCol);
    for i=(nCol-1):-1:1
        x(i) = z(i);
        for I=(i+1):nCol
            x(i) = (x(i) - (R(i,I)*x(I)));
        end
        x(i) = x(i) / R(i,i);
    end
    x = x';
end