function [media,desvio_padrao] =exer4_2(data,exp,exo,atividade)
    matriz_label = handler_label(exp);
    if atividade == "W"
        n_ativi = 1;
    elseif atividade=="W-U"
        n_ativi = 2;
    elseif atividade == "W-D"
        n_ativi = 3;
    end
    matriz_atividade = janelas(matriz_label,n_ativi);
    Ts = 1/50;
    fs = 1/Ts;
    if exo == "x"
        eixo =data(:,1);
    elseif exo =="y"
        eixo = data(:,2);
    elseif exo == "z"
        eixo = data(:,3);
    end
    arquivo = fopen("infor.txt", "a");
    fprintf(arquivo,"Ficheiro: %d - eixo %s- atividade %s\n",exp,exo,atividade);
    for i=1:size(matriz_atividade,1)
        N = length(eixo(matriz_atividade(i,4):matriz_atividade(i,5)));
        if (mod(N,2)==0)
        % se o número de pontos do sinal for par
            f = -fs/2:fs/N:fs/2-fs/N;
        else
        % se o número de pontos do sinal for ímpar
            f = -fs/2+fs/(2*N):fs/N:fs/2-fs/(2*N);
        end
        conj_valor = eixo(matriz_atividade(i,4):matriz_atividade(i,5));
        conj_valor = detrend(conj_valor);
        dft = fftshift(fft(conj_valor));
        abs_dft = abs(dft);
        in =find(f>0);
        nf = f(f>0);
        maxi = max(abs_dft(in));
        [pks,locs] = findpeaks(abs_dft(in),'MinPeakHeight',maxi*0.4);
        freq=nf(locs(1));
        n_passos = freq*60;
        matriz(1,i)=n_passos;
        fprintf(arquivo,"%d ",n_passos);
    end
    media = mean(matriz);
    desvio_padrao = std(matriz);
    fprintf(arquivo,"Media: %d Desvio Padrao: %d\n",media,desvio_padrao);
    fclose(arquivo);
