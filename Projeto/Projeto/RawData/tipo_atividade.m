function tipo = tipo_atividade(id_atividade)
    if 1 == id_atividade
        tipo = "WALKING"
    elseif 2 == id_atividade
        tipo = "WALKING_UPSTAIRS"
    elseif 3 == id_atividade
        tipo = "WALKING_DOWNSTAIRS"  
    elseif 4 == id_atividade
        tipo = "SITTING"  
    elseif 5 == id_atividade
        tipo = "STANDING"  
    elseif 6 == id_atividade
        tipo = "LAYING"
    elseif 7 == id_atividade
        tipo = "STAND_TO_SIT"  
    elseif 8 == id_atividade
        tipo = "SIT_TO_STAND"  
    elseif 9 == id_atividade
        tipo = "SIT_TO_LIE"  
    elseif 10 == id_atividade
        tipo = "LIE_TO_SIT"  
    elseif 11 == id_atividade
        tipo = "STAND_TO_LIE"  
    else
        tipo = "LIE_TO_STAND"
    end
end