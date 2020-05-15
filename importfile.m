function atividade = importfile(filename)
delimiterIn = ' ';
headerlinesIn = 1;
format long
fich = strcat('./RawData/',filename);
A = importdata(fich,delimiterIn,headerlinesIn);
n = str2double(fich(18:19));
dividir_graf(A.data,fich,n);
atividade = A.data;
end