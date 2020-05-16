function palavra = tipo_atividade1(exp)
    Valores={1,2,3,4,5,6,7,8,9,10,11,12};
    Palavras={'W','W-U','W-D','SIT','STAND','LAY','STAND-SIT','SIT-STAND','SIT-LIE','LIE-SIT','STAND-LIE','LIE-STAND'}; 
    i=1;
    while exp~=Valores{1,i}
        i=i+1;
    end
    palavra=Palavras{1,i};
end