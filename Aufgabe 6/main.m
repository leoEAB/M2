tspan = [4 4.5];
y0 = [3;2];
f =  @(t,y) [y(2);y(1)*y(2)*t];
n = 1;

%[a,b] = euler_verfahren(f, tspan, y0, n);
%[A,B] = mittelpunkt(f, tspan, y0, n);

tspan = [0 1000];
n = 1000;
c = 2;
w = 1;
i0 = 10^(-6);
s0 = 1-i0;
r0 = 0;

y0 = [s0, i0, r0];

f = @(i,s, r) [-2*i*s(1)
    2*i*s(1)-1*i
    1*i];

[a,b] = ode45(f, tspan, y0);
[A,B] = euler_verfahren(f, tspan, y0, n);
[A_,B_] = mittelpunkt(f,tspan,y0,n);
plot(a,b);
