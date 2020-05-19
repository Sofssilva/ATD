function [pico_max] = calcula_maximo(matriz,aac)

tam=size(matriz(:,1));
pico_max=[];

for i=1:tam(1)
    X = aac(matriz(i,4):matriz(i,5));
    X = detrend(X);
    x = fftshift(fft(X));
    m_X = abs(x);
    
    aux=calcula_picos(m_X);
    pico_max=[pico_max aux];
end
%disp(pico_max);
    