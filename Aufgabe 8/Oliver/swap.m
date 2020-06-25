% A = Die gesamte Matrix
% X = [a b] sagt welche beiden zeilen
% Bsp.:
% X = [1 3]
% A =
%      1     2     3
%      4     5     6
%      7     8     9
%
% Lösung:
%      7     8     9
%      4     5     6
%      1     2     3

function A = swap(A,X)
    A(X,:) = A(X([2,1]),:);
end
