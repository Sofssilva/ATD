function [primeiro_pico, ultimo_pico, pico_maximo] = calcula_picos(dados)

    maximo = max(abs(dados(ixp)));
    [picos, locs] = findpeaks(abs(dados(ixp)), 'MinPeakHeight', maximo*0.4);
    primeiro_pico = locs(1);
    ultimo_pico = locs(numel(picos));
    pico_maximo = max(picos);