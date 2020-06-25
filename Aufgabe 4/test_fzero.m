function f = test_fzero(A)
    C = 5 + A;
    y = @(x) x.^2 - C;
    x0 = 2;
    f = fzero(y,x0);
end