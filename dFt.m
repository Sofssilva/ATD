%compor dft por causa das janelasS

function dFt(data)
labels = handler_label(1);
aac_X = data(:,1);
aac_Y = data(:,2);
aac_Z = data(:,3);
for i = 1: 12
    matriz = janelas(labels,i);
    tam = size(janelas(labels,i),1);
    xx = matriz(tam,:)
    N = length(aac_X(xx(1,4):xx(1,5))); 
    Ts = 1/50;
    fs = 1/Ts;
    if (mod(N,2)==0)
        % se o número de pontos do sinal for par
        f = -fs/2:fs/N:fs/2-fs/N;
    else
        % se o número de pontos do sinal for ímpar
        f = -fs/2+fs/(2*N):fs/N:fs/2-fs/(2*N);
    end
    X = aac_X(xx(1,4):xx(1,5));
    X = detrend(X);
    x = fftshift(fft(X));
    m_X = abs(x);
    figure(11)
    subplot(12,1,i)
    plot(f,m_X) 
    xlim([0,8]);
    hold on
    nome = 'X |DFT| do sinal - ';
    num = tipo_atividade(xx(1,3));
    disp(strcat(nome,num))
    title(strcat(nome,num));
    ylabel('|X|')
    xlabel('[Hz]')
end
for j = 1: 12
    matriz = janelas(labels,i);
    tam = size(janelas(labels,i),1);
    yy = matriz(tam,:)
    N = length(aac_Y(yy(1,4):yy(1,5))); %vai buscar o intervalo do primeiro q encontra da atividade em causa e calcula o N
    Ts = 1/50;
    fs = 1/Ts;
    if (mod(N,2)==0)
        % se o número de pontos do sinal for par
        f = -fs/2:fs/N:fs/2-fs/N;
    else
        % se o número de pontos do sinal for ímpar
        f = -fs/2+fs/(2*N):fs/N:fs/2-fs/(2*N);
    end
    Y = aac_Y(yy(1,4):yy(1,5));
    Y = detrend(Y);
    y = fftshift(fft(Y));
    m_Y = abs(y);
    tit = tipo_atividade(yy(1,3));
    ponto_4_1(f, m_Y,j+13, Y, tit)
    figure(12)
    subplot(12,1,j)
    plot(f,m_Y)
    xlim([0,8]);
    hold on
    nome = 'Y |DFT| do sinal - ';
    num = tipo_atividade(yy(1,3));
    title(strcat(nome,num));
    ylabel('|X|')
    xlabel('[Hz]')
end
for k = 1: 12
    matriz = janelas(labels,i);
    tam = size(janelas(labels,i),1);
    zz = matriz(tam,:)
    N = length(aac_Z(zz(1,4):zz(1,5))); %vai buscar o intervalo do primeiro q encontra da atividade em causa e calcula o N
    Ts = 1/50;
    fs = 1/Ts;
    if (mod(N,2)==0)
        % se o número de pontos do sinal for par
        f = -fs/2:fs/N:fs/2-fs/N;
    else
        % se o número de pontos do sinal for ímpar
        f = -fs/2+fs/(2*N):fs/N:fs/2-fs/(2*N);
    end
    Z = aac_Z(zz(1,4):zz(1,5));
    Z = detrend(Z);
    z = fftshift(fft(Z));
    m_Z = abs(z);
    figure(13)
    subplot(12,1,k)
    plot(f,m_Z)
    xlim([0,8]);
    hold on
    nome = 'Z |DFT| do sinal - ';
    num = tipo_atividade(zz(1,3));
    title(strcat(nome,num));
    ylabel('|X|')
    xlabel('[Hz]')
end


end