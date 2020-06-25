% NEWTON Lösung skalarer Gleichungen mithilfe des Newton-Verfahrens
%
%   [xbar,x]=NEWTON(f,x0,tol,nmax)
%
%   Eingabe:
%       f       Funktionshandle mit [y,dy]=f(x)
%       x0      Startwert
%       tol     Toleranz für Abbruch |f(x_k)|+|x_k-x_(k-1)|<tol
%       nmax    Maximale Anzahl an Iterationen >=1
%   Ausgabe:
%       xbar    Approximation der Nullstelle
%       x       Spaltenvektor der Iterierten
%
function [xbar,x]=newton(f,x0,tol,nmax)
    [y,dy] = f(x0);
    x(1) = x0;
    n = 2;
    x(n) = x0 - y/dy;

    while(n <= nmax)
        if (abs(f(x(n))) + abs(x(n)-x(n-1))) < tol
            
            break;
        end 
        [y, dy] = f(x(n));
        n = n + 1;
        x(n) = x(n-1) - y/dy ;
    end
    x = x';
    xbar = x(n);
end