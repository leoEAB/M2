
x0 = [1;-1];
tol = 10^(-8);
nmax = 40;

[a,b,c] = newton(@f_beispiel,x0,tol,nmax)