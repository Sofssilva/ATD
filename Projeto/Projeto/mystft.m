function mystft(accZ)
    fs = 50;
    NElem = numel(accZ);
    t = NElem/fs;
    TamJanela = 0.005*t;
    Tamoverlap = TamJanela/2;
    Numframe = round(TamJanela*fs);
    h = hamming(Numframe);
    NumOverlap = round(Tamoverlap*fs);
    espetroArray = [];

    frequencia = linspace(-fs/2,fs/2,Numframe);
    
    for i = 1:Numframe-NumOverlap:NElem-Numframe
        %Aplicar janela ao time signal
        x_frame = accZ(i:i+Numframe-1).*h;
        
        %magnitude do sinal
        m_X_frame = abs(fftshift(fft(x_frame)));
        espetroArray = horzcat(espetroArray,m_X_frame(frequencia>=0));

    end
    figure('Name','Espetro','NumberTitle','off');
    imagesc(20*log10(espetroArray));
    colorbar;
    set(gca,'YDir','normal');
    
    %figure('Name',"SPECTRUM (MATLAB)",'NumberTitle','off');
    %spectrogram(accZ,Numframe,NumOverlap,[],fs,'yaxis')
    %title('Spectrogram Function')
end