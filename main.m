close all
data1 = importfile('acc_exp01_user01.txt');
data2 = importfile('acc_exp02_user01.txt');
data3 = importfile('acc_exp03_user02.txt');
data4 = importfile('acc_exp04_user02.txt');
data5 = importfile('acc_exp05_user03.txt');
data6 = importfile('acc_exp06_user03.txt');
data7 = importfile('acc_exp07_user04.txt');
data8 = importfile('acc_exp08_user04.txt');
data9 = importfile('acc_exp09_user05.txt');
data10 = importfile('acc_exp10_user05.txt');


%Exercicio 4

dFt(data1)


%Exercício 5
accZ = data10(:,3);
mystft(accZ);
