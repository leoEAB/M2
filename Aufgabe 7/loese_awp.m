function [a,b] = loese_awp(q)
    Ta = 293.15; %K = 20°C
    T0 = 373.15; %K = 100°C
    alpha = 50; % W/(m^2*K)
    lamda = 240; % W/(m*K)
    d = 5 * 10^(-3); %m
    L = 50 * 10^(-3); %m
    Omega = (2*alpha)/(d* lamda);
    
    tspan = [0 L];
    t0 = [T0; q];
    
    dy = @(x,T) [T(2); Omega*(T(1)-Ta)];

    [a,b] = ode45(dy, tspan, t0);

end