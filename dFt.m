function dFt(data, labels)
aac_X = data(:,1);
aac_Y = data(:,2);
aac_Z = data(:,3);
for i = 1: 12
    x = janelas(labels,i); 
    N = length(x(1,4):x(1,5)); 
    Ts = 1/50;
    fs = 1/Ts;
    if (mod(N,2)==0)
        % se o número de pontos do sinal for par
        f = -fs/2:fs/N:fs/2-fs/N;
    else
        % se o número de pontos do sinal for ímpar
        f = -fs/2+fs/(2*N):fs/N:fs/2-fs/(2*N);
    end
    A = aac_X(x(1,4):x(1,5));
    A = detrend(A);
    a = fftshift(fft(A));
    m_a = abs(a);
    subplot(12,3,i)
    plot(f,m_a) 
%    axis([0 20 0 inf])
    hold on
    nome = '|DFT| do sinal - ';
    num = tipo_atividade(x(1,3));
    title(strcat(nome,num));
    ylabel('|X|')
    xlabel('[Hz]')
end
for i = 1: 12
    x = janelas(labels,i); 
    N = length(x(1,4):x(1,5)); %vai buscar o intervalo do primeiro q encontra da atividade em causa e calcula o N
    Ts = 1/50;
    fs = 1/Ts;
    if (mod(N,2)==0)
        % se o número de pontos do sinal for par
        f = -fs/2:fs/N:fs/2-fs/N;
    else
        % se o número de pontos do sinal for ímpar
        f = -fs/2+fs/(2*N):fs/N:fs/2-fs/(2*N);
    end
    A = aac_Y(x(1,4):x(1,5));
    A = detrend(A);
    a = fftshift(fft(A));
    m_a = abs(a);
    subplot(12,3,i+12)
    plot(f,m_a) 
  %  axis([0 20 0 inf])
    hold on
    nome = '|DFT| do sinal - ';
    num = tipo_atividade(x(1,3));
    title(strcat(nome,num));
    ylabel('|X|')
    xlabel('[Hz]')
end
for i = 1: 12
    x = janelas(labels,i); 
    N = length(x(1,4):x(1,5)); %vai buscar o intervalo do primeiro q encontra da atividade em causa e calcula o N
    Ts = 1/50;
    fs = 1/Ts;
    if (mod(N,2)==0)
        % se o número de pontos do sinal for par
        f = -fs/2:fs/N:fs/2-fs/N;
    else
        % se o número de pontos do sinal for ímpar
        f = -fs/2+fs/(2*N):fs/N:fs/2-fs/(2*N);
    end
    A = aac_Z(x(1,4):x(1,5));
    A = detrend(A);
    a = fftshift(fft(A));
    m_a = abs(a);
    subplot(12,3,i+24)
    plot(f,m_a) 
   % axis([0 20 0 inf])
    hold on
    nome = '|DFT| do sinal - ';
    num = tipo_atividade(x(1,3));
    title(strcat(nome,num));
    ylabel('|X|')
    xlabel('[Hz]')
end


end
