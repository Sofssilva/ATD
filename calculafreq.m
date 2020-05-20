
      
function [frequencias] = calculafreq(matriz,aac)

tam=size(matriz(:,1));
frequencias=[]
fs = 50;
j=1
for i=1:tam(1)
    N=numel(matriz(i,4):matriz(i,5))
    if (mod(N,2)==0)
        % se o número de pontos do sinal for par
        f = -fs/2:fs/N:fs/2-fs/N;
    else
        % se o número de pontos do sinal for ímpar
        f = -fs/2+fs/(2*N):fs/N:fs/2-fs/(2*N);
    end
    ip=find(f>=0);
    nf=f(ip);
    X = aac(matriz(i,4):matriz(i,5));
    X = detrend(X);
    x = fftshift(fft(X));
    m_X = abs(x);   
    maximo=max(m_X(ip));
    %vetor_picos(vetor_picos > maximo*0.4);
    [vetor_picos,locs] = findpeaks(m_X(ip),'MinPeakHeight',maximo*0.4);
    freq=nf(locs(1));
    frequencias(1,j)=freq
    j=j+1
    
end
