function dFt(data, labels, j)
aac_X = data(:,1);
for i = 1: 12
    N = length(aac_X(labels(i,4):labels(i,5)));
    Ts = 1/50;
    fs = 1/Ts;
    if (mod(N,2)==0)
        % se o n�mero de pontos do sinal for par
        f = -fs/2:fs/N:fs/2-fs/N;
    else
        % se o n�mero de pontos do sinal for �mpar
        f = -fs/2+fs/(2*N):fs/N:fs/2-fs/(2*N);
    end
    A = aac_X(labels(i,4):labels(i,5));
    A = detrend(A);
    a = fftshift(fft(A));
    m_a = abs(a);
    subplot(12,j,i)
    plot(f,m_a) 
    axis([0 20 0 inf])
    hold on
    nome = '|DFT| do sinal - ';
    num = tipo_atividade(labels(i,3));
    title(strcat(nome,num));
    ylabel('|X|')
    xlabel('[Hz]')
end


end
