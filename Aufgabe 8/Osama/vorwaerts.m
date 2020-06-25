% VORWAERTS berechnet die Vorwärtsrekursion
%   z = VORWAERTS(LR,piv,b) löst L*z=P*b
%   Eingabe:
%       LR      (n x n) Matrix mit L*R = P*A
%               R: obere Dreiecksmatrix mit Diagonale
%               L: untere Dreiecksmatrix (Diagonale mit Einsen)
%       piv     (n x 1) Vektor der Zeilenvertauschungen
%       b       (n x 1) Vektor der rechten Seite des LGS
%   Ausgabe:
%       z       (n x 1 ) Vektor Lösung des LGS L*z=P*b
%
function z=vorwaerts(LR,piv,b)
N = size(LR,1);
z = b(piv)
%%
%L und R trennen
    for i=1:N
       L(i,i) = 1;
       L((i+1):N,i) = LR((i+1):N,i);
       R(i, i:N) = LR(i, i:N);
    end
%%

for n=2:N
   z(n) = z(n) - L(n,1:n-1)*z(1:n-1)
end
z(N) = z(N)/L(N,N)
for n=N-1:-1:1
    z(n) = (z(n) - L(n,n+1:N)*z(n+1:N))/L(n,n)
end
end
