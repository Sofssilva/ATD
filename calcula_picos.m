function [pico_max,primeiro,ultimo]=calcula_picos(matriz)
    f=linspace(-25,25,numel(matriz));
    ixp=find(f>=0);
    f=f(ixp);
    
    m_X = abs(matriz);
    
    maximo=max(m_X);
    [pks,locs] = findpeaks(abs(matriz(ixp)),'MinPeakHeight',maximo*0.4);
    
    %frequencias relevantes
    pico_max=max(pks);
    primeiro=f(locs(1));
    ultimo=f(locs(numel(pks)));
