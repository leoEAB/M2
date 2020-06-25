% A = Vektor nxn
% spalte = eine zahl
function [A,s1] = spaltenpivo(A,spalte)
    
    % Return if the column not exists or 
    % is the last column
    if(length(A) <= spalte)
        s1 = [1,1];
       return 
    end
    
    % Die ganze spalte speichern
    vec = A(:,spalte);
    
    % Die Werte mit NaN deklarieren wenn 
    % sie zu einer Zeile gehören die man nicht braucht
    if(spalte ~= 1)
        vec(1:spalte-1) = NaN;
    end
    % Das maxium mit dem Index finden
    % val wird nicht verwendet
    [val,index_max] =max(abs(vec));
    
    % Die zu tauschenden Zeilen speichern
    s1 = [spalte, index_max];
    
    % Tauschen von zwei zeilen
    A = swap(A,s1);
end