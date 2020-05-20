function [matriz]=handler_label(exp)
    A = load("./RawData/labels.txt");
    i=1;
    while A(i,1)~=exp
         i=i+1;
    end
    prim_ind=i;
    while A(i,1)==exp
       i=i+1;
    end
    ult_ind=i-1;
    i=1;
    matriz = zeros(ult_ind-prim_ind+1,5);
    while prim_ind<=ult_ind
       matriz(i,:)=A(prim_ind,:);
       prim_ind=prim_ind+1;
       i=i+1;
    end
end
 

