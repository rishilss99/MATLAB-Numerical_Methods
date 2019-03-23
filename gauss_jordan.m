clear all;
clc;
a = input('Enter matrix a:');
b = input('Enter matrix b:');
[rows,cols] = size(a);
c=[a,b];
for col=1:cols
    c(col,:)=c(col,:)/c(col,col);
    for row=1:rows
        if row == col
            continue
        else
        temp = c(row,col);
        c(row,:)=c(row,:)-temp*c(col,:);
        end
    end
end
disp(c(:,4));
