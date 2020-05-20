function ponto_4_1(freq, amp, num, dados, nome_atividade)
f=linspace(-25,25,numel(dados));
ixp=f>=0;
f=f(ixp);

fiambre = fftshift(fft(detrend(dados).*hamming(numel(dados))));
han = fftshift(fft(detrend(dados).*hann(numel(dados))));
black = fftshift(fft(detrend(dados).*blackman(numel(dados))));

figure(num)
subplot(2,2,1)
plot(freq, amp)
xlim([0,30]);
nome = strcat(nome_atividade, " DFT");
title(nome)


subplot(2,2,2)
plot(f,abs(fiambre(ixp)));
nome = strcat(nome_atividade, " HAMMING");
title(nome)

subplot(2,2,3)
plot(f,abs(han(ixp)));
nome = strcat(nome_atividade, " HANN");
title(nome)

subplot(2,2,4)
plot(f,abs(black(ixp)));
nome = strcat(nome_atividade, " BLACKMAN");
title(nome)

