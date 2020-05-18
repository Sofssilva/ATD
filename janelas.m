%retorna uma matriz em que cada linha corresponde à janela da respetiva
%atividade
function matriz_atividades=janelas(matriz_exp,atividade)
    j=1;
    for i=1:size(matriz_exp,1)
        if matriz_exp(i,3)==atividade
            matriz_atividades(j,:) =matriz_exp(i,:);
            j=j+1;
        end
    end
end