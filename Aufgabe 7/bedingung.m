function f = bedingung(q)
    


    [a,b] = loese_awp(q);
    
    f = b(end, 2);
    
end

