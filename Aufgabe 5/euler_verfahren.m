% EULER_VERFAHREN zur Lösung von skalaren Anfangswertproblemen
%   [t,y] = EULER_VERFAHREN(f,tspan,y0,n)
%   Eingabe:
%       f       Funktion Handle auf Funktion dy=f(t,y) mit
%               t       Skalar Zeit
%               dy,y    Skalar (k*1)
%       tspan   Vektor mit Start- und Endzeit [a,b]
%       y0      Anfangswert (k*1) verctor
%       n       Anzahl der Teilintervalle
%   Ausgabe
%       t       (n+1) x 1 Vektor der Zeitpunkte
%       y       (n+1) x k Vektor der Zustände, wobei in Zeile i der
%               Zustand zum Zeitpunkt t(i) gespeichert ist
%
function [t,y]=euler_verfahren(f,tspan,y0,n)
    t0 = tspan(1);
    tf = tspan(2);
    h = abs(tf - t0)./n; %Schrittbreite
    t = linspace(t0,tf,n+1); %Vcreate vector of t values
    y = zeros(m, n+1); %Speicherplatz für y
    y(1) = y0; % Initial Kondition
    for i=1:n
       y(i+1) = y(i)+(h*f(t(i), y(i))); %Euler methode
    end
    t = t';y = y';
end