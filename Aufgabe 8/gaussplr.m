% GAUSSPLR berechnet die LR-Zerlegung mit Spaltenpivotisierung
%   [LR,piv] = GAUSSPLR(A)
%   Eingabe:
%       A       (n x n) Matrix, regulär
%   Ausgabe:
%       LR      (n x n) Matrix mit L*R = P*A
%               R: obere Dreiecksmatrix mit Diagonale
%               L: untere Dreiecksmatrix (Diagonale mit Einsen)
%       piv     (n x 1) Vektor der Zeilenvertauschungen
%
function [LR,piv] = gaussplr(A)
    [nRows, nCol] = size(A); %Number of rows
    piv = [1:nRows]';
    A2 = zeros(nRows, nCol);
    for i=1:nCol-1
       F = A(i:nCol, i);
       [~, I] = max(abs(F));
       I = I+(i-1);
       M = A(I, i);
       A([i I], :) = A([I i], :);
       A2([i I], :) = A2([I i], :);
       piv([i, I], :) = piv([I, i], :);
       for i2=i:nCol-1
           X = M;
           O = A(i2+1, i);
           if(O ~= 0)
               factor = O/X;
           else
               factor = 0;
           end
           A(i2+1,:) = A(i2 +1,:) - factor * A(i, :);
           A2(i2+1, i) = factor;
       end
       
    end
    LR = A+A2;
    
end