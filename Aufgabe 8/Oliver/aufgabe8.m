function aufgabe8()

    A = [ 60 -40 0;-40 150 -100;0 -100 130];
    disp("A =")
    disp(A)
    
    b = [200 0 230]';
    disp("b =")
    disp(b)
    
    % b)
    disp("Die Konditionzahl ist "+cond(A))
    disp("Der relative Fehler ist "+cond(A)+" * 0.01")
    disp("= "+cond(A)*0.01)
    
    % d)
    disp([newline, 'Die Lösung ist:'])
    disp(A\b)
    
    % 8.2 
    N=20;
    for i=2:N
        H = hilb(i);
        len = size(H,1);
        x = ones(len,1);
        b = H*x; 
        
        disp("================")
        disp("H * x = b")
        disp("H = ")
        disp(H)
        
        disp("x = ")
        disp(x)
        disp("b = ")
        disp(b)
        disp("================")
    end
end