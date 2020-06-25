%Test gaussplpr
A = [0 -2 1; 0.5 3 -0.5; 1 4 2];b = [1;0;7];
%A = [8 2 1; 2 6 2; 2 1 4];b = [9; 4; 6];
%A = [6 5 3 -10; 3 7 -3 5; 12 4 4 4;0 12 0 -8];


[LR, piv] = gaussplrOli(A);
[nRows, nCol] = size(A);
P = zeros(nRows, nCol);
R = zeros(nRows, nCol);
L = zeros(nRows, nCol);
for i=1:nCol
        P(i,piv(i)) = 1;
end
%R trennen
for i=1:nCol
   R(i, i:nCol) = LR(i, i:nCol);
   L(i,i) = 1;
end
for i=2:nCol
   L(i, 1:(i-1)) = LR(i, 1:(i-1));
end

if(P*A == L*R) %&& (piv == test_piv)
    fprintf("klappt\n");
else 
    fprintf("klappt not\n");
end
