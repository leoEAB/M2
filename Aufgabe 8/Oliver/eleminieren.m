% Wendet das Gaussverfahren an 
% Produziert eine untere Nullmatrix
% 
% A = vektor nxn
% spalte = zahl -> welche spalte soll "genullt" werden
%
% Return val:
% A = neue Vektor
% firstElement = 1xn n= 1x2 Vektor von dem Element welches "genullt" wurde
% faktor = 1xn 
function [A,elements,faktor] = eleminieren(A,spalte)

    len = length(A);
%     elements= zeros(2,len-1);
%     faktor = zeros(1,len-1);
    elements = [];
    faktor = 0;
    
    for i=1:len-1
        
        if(spalte+i > len)
            break;
        end
        
        a = A(spalte,spalte);
        b = A(spalte+i,spalte);
        x = -b/a;
        
        faktor(i) = x;
        elements(:,i) = [spalte+i spalte]';
%       Fix me
%       stimmt b wirklich ?? 
%       Zeile 17 & 18 dürfen nicht so aussehen -> Sie müssen einen Wert haben
        
        % II + I*x = 0
        %        x = -II /I 
        A(spalte+i,:) = +A(spalte+i,:)+ A(spalte,:)*x;
    end
end