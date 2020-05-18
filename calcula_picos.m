function pico_max=calcula_picos(matriz)
    picos=findpeaks(matriz);
    maxi=max(picos);
    val=maxi*0.40;
    
    arrayPicos=picos(picos>val);
    
    pico_max=arrayPicos(1);