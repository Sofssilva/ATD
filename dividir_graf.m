function dividir_graf(matriz_dados,filename,exp)
    graf={'ACC_X','ACC_Y','ACC_Z','Time(min)'};
    for i=1 :size(matriz_dados,2)
        figure(exp);
        subplot(3,1,i);
        if i==1
            title(filename)
        end
        hold on;
        %meter aqui a representacao
        matriz_label=handler_label(exp);
        colorir_graf(matriz_dados(:,i),matriz_label);
        hold off;
        ylabel(graf{1,i});
        xlabel(graf{1,size(graf,2)});        
    end
end


