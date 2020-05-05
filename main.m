Expr={'01','02','03','04','05','06','07','08','09','10'};
User={'01','02','03','04','05'};

j = 0;	
for i=1: size(Expr,2)
    if mod(i,2)~= 0
        j = j + 1;
    end
    filename = strcat('./RawData/acc_exp',Expr{1,i},'_user',User{1,j},'.txt');
    delimiterIn = ' ';
    headerlinesIn = 1;
    format long
    A = importdata(filename,delimiterIn,headerlinesIn);
    disp(A.data)
    disp(i)
    disp(j)
end
