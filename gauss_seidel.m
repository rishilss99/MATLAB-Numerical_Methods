clear all;
clc;
a = input('Enter matrix a:');
b = input('Enter matrix b:');
x = input('Enter the x matrix with guess values:');
[rows,cols]=size(a);
for i=1:30
    for row=1:rows
        x(row,:)=b(row,:)/a(row,row);
        for col=1:cols
            if col==row
                continue
            else
                x(row,:)=x(row,:)-(a(row,col)*x(col,:))/a(row,row);
                disp(x);
            end
        end
    end
end
disp(x);