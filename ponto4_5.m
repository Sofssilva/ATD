function ponto4_5(data)
figure();
labels = handler_label(1);
aac_X = data(:,1);
aac_Y = data(:,2);
aac_Z = data(:,3);

cores=["ro","bo","go"];
plots=[];
grid on
hold on
for i = 1: 3
    matriz = janelas(labels,i);
    picosX=calcula_maximo(matriz,aac_X);
    disp(picosX);
    
   

    picosY=calcula_maximo(matriz,aac_Y);
    %disp(picosY);

    picosZ=calcula_maximo(matriz,aac_Z);
    %disp(picosZ);
    subplot(2,2,1)
    %picos maximos
    for j=1:numel(picosX)
        hold on
        grid on
        pLot=plot3(picosX(j),picosY(j),picosZ(j),cores(i));
        drawnow;
        %plots=[plots pLot];
    end 
    title("Pico máximo"); 
    freqX=calculafreq(matriz,aac_X);
    freqY=calculafreq(matriz,aac_Y);
    freqZ=calculafreq(matriz,aac_Z);
    subplot(2,2,2)
    for j=1:numel(freqX)
        hold on
        grid on
        pLot=plot3(freqX(j),freqY(j),freqZ(j),cores(i));
        drawnow;
        %plots=[plots pLot];
    end 
    title("Frequências"); 
end
hold off


