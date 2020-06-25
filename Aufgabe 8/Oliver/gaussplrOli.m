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

    len = length(A)
    L = zeros(len,len)
    piv = (1:len)'
    
%     for i=1:len
%         for k=1:len
%             disp(A(i,k))
%         end
%     end
    
    M = A;
    for i=1:len
        
        [M,s1] = spaltenpivo(M,i)
        L = swap(L,s1)
        piv = swap(piv,s1)
        [M,elements,faktor] = eleminieren(M,i)
        
        for m=1:size(elements,2)
            L(elements(1,m),elements(2,m)) = -faktor(m)
        end
        
    end
    
 
    
    R = M;
    LR = L+R;
    
    disp(R);
    disp(L);
    disp("L:")
    disp(L);
    disp("R:")
    disp(R);
    disp("LR:")
    disp(LR);
    disp("piv: ")
    disp(piv);
end
