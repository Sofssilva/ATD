function dFt(data)

aac_X = data(:,1);
N = length(aac_X(250:1232));
Ts = 1/50;
fs = 1/Ts;
if (mod(N,2)==0)
    % se o número de pontos do sinal for par
    f = -fs/2:fs/N:fs/2-fs/N;
else
    % se o número de pontos do sinal for ímpar
    f = -fs/2+fs/(2*N):fs/N:fs/2-fs/(2*N);
end

A = aac_X(250:1232);
A = detrend(A);
a = fftshift(fft(A));
m_a = abs(a);
subplot(10,3,1)
plot(f,m_a) 
hold on
title('|DFT| do sinal', tipo);
ylabel('Magnitude = |X|')
xlabel('f [Hz]')
end
