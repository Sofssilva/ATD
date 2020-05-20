function colorir_graf(matriz_cada,matriz_label)
    N = size(matriz_cada,1);
    Ts = 1/50;
    syms t;
    t = linspace(0,Ts*(N-1)/60,N);
    at=t(1,1);
    for i=1:size(matriz_label,1)        
        inicio = matriz_label(i,4);
        fim = matriz_label(i,5);
        tipo = tipo_atividade(matriz_label(i,3));
        %verificar os intervalos
        peace_dados = matriz_cada(inicio:fim,:);
        %tempo respetivo
        tempo = t(1,inicio:fim);
        plot(tempo,peace_dados);
        if mod(i,2)==0
            text(t(1,inicio),min(matriz_cada(:,1))+0.05,tipo,"Color","k","FontSize",6);
        else
            text(t(1,inicio),max(matriz_cada(:,1))-0.05,1,tipo,"Color","k","FontSize",6);
        end
        if at ~=inicio-1
            %não é seguido->colocar a preto
            peace_dados = matriz_cada(at+1:inicio-1,:);
            %tempo respetivo
            tempo = t(1,at+1:inicio-1);
            plot(tempo,peace_dados,'k');
        end
        at = fim;
    end
    
end