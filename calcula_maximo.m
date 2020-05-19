function [picos] = calcula_maximo(matriz,aac)

tam=size(matriz(:,1));
picos=[];
aux1=[];
aux2=[];
aux3=[];

for i=1:tam(1)
    X = aac(matriz(i,4):matriz(i,5));
    X = detrend(X);
    x = fftshift(fft(X));
    
    [aux1,aux2,aux3]=calcula_picos(x);
    picos=[picos aux1 aux2 aux3];
end
%disp(picos);
    