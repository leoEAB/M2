test_x = [0;1;2;4];test_y = [-3;1;2;7];test_d = [-3;4;-1.5;0.5];
%test_x = [0;1;2];test_y = [3;2;-3];test_d = [3;-1;-2];
D = divdif(test_x,test_y)
if(D==test_d)
    fprintf("na geht doch, jut gemacht\n");
else
    fprintf("hopalopa, da musst du nochmal drüberschaun\n");
end

%Test für horner-shema
t = [0:0.01:4];

H = horner_schema(test_x,D,t);

plot(t,H);