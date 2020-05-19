function ponto_4_3(data)
figure(26);
labels = handler_label(1);
aac_X = data(:,1);
aac_Y = data(:,2);
aac_Z = data(:,3);

%cores=["r+","m+","g+","ro","mo","go","r>","m>","g>","r>","c>","b>"];
cores=["ro","r+","r*","gh","gx","gs","bd","b^","bv","b>","b<","bp"];
plots=[];

grid on
hold on
for i = 1: 12
    matriz = janelas(labels,i);
    picosX=calcula_maximo(matriz,aac_X);
    
   
    matriz = janelas(labels,i);
    picosY=calcula_maximo(matriz,aac_Y);
    
    
    matriz = janelas(labels,i);
    picosZ=calcula_maximo(matriz,aac_Z);
    
    %disp(numel(picosX));
    %disp(picosX);
    
    for j=1:numel(picosX)
        pLot=plot3(picosX(j),picosY(j),picosZ(j), cores(i));
        drawnow;
        plots=[plots pLot];
    end
end
hold off
legend([plots(1) plots(5) plots(10) plots(11) plots(13) plots(16) plots(17) plots(18) plots(19) plots(20) plots(21) plots(22)],["Walking","Walking Upstairs","Walking Downstairs","Sitting","Standing","Laying","Stand to sit","Sit to stand","Sit to lie","Lie to sit","Stand to lie","Lie to stand"]);


    