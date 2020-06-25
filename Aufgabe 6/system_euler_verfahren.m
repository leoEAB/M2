function [t,y]=system_euler_verfahren(f,tspan,y0,n)
k = size(y0);
t = zeros(n+1, 1);
y = zeros(n+1, k(1));
t(1) = tspan(1);
y(1, :) = y0; % Zuweisung 1. Zeile, alle Spalten
h = (tspan(2) - tspan(1) ) / n;
for i = 1 : n
    t(i+1) = tspan(1) + (i*h);
    y(i + 1, :) = y(i, :) + h .* f(t(i), y(i,:));
end
end