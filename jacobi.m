clear all;
clc;
a = input('Enter matrix a:');
b = input('Enter matrix b:');
x_temp = input('Enter the x matrix with guess values:');
[rows,cols]=size(a);
x=x_temp;
for i=1:12
    x_temp=x;
    for row=1:rows
        x(row,:)=b(row,:)/a(row,row);
        for col=1:cols
            if col==row
                continue
            else
                x(row,:)=x(row,:)-(a(row,col)*x_temp(col,:))/a(row,row);
            end
        end
    end
end
disp(x);