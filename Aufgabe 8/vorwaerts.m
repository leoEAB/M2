% VORWAERTS berechnet die Vorwärtsrekursion
%   z = VORWAERTS(LR,piv,b) löst L*z=P*b
%   Eingabe:
%       LR      (n x n) Matrix mit L*R = P*A
%               R: obere Dreiecksmatrix mit Diagonale
%               L: untere Dreiecksmatrix (Diagonale mit Einsen)
%       piv     (n x 1) Vektor der Zeilenvertauschungen
%       b       (n x 1) Vektor der rechten Seite des LGS
%   Ausgabe:
%       z       (n x 1 ) Vektor Lösung des LGS L*z=P*b
%
function z=vorwaerts(LR,piv,b)
    [nRows, nCol] = size(LR);
    R = zeros(nRows, nCol);
    L = zeros(nRows, nCol);
    P = zeros(nRows, nCol);
    %piv von 321 zu 001 010 100
    for i=1:nCol
        P(i,piv(i)) = 1;
    end
    %L und R trennen
    for i=1:nCol
       L(i,i) = 1;
       L((i+1):nCol,i) = LR((i+1):nCol,i);
       R(i, i:nCol) = LR(i, i:nCol);
    end
    pb = P * b;
    % z errechnen
    z(1) = pb(1);
    for i=2:nCol
        z(i) = pb(i);
        for I=1:(i-1)
            z(i) = z(i) - L(i,I)*z(I);
        end
    end
    z = z';
end