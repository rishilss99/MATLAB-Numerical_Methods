clear all;
clc;

a = input('Enter matrix A:');
b = input('Enter matrix B:');

[rows,cols]=size(a);
x_old = zeros(rows,1);
x_new = ones(rows,1);
error = (x_new-x_old)./x_new;
while(max(error)>0.0001)
    for row=1:rows
        x_new(row,:)=b(row,:)/a(row,row);
        for col=1:cols
            if row ~= col
               x_new(row,:)=x_new(row,:)-(x_new(col,:)*a(row,col))/a(row,row);
            end
        end
    end
    error = (x_new-x_old)./x_new;
    x_old = x_new;
end
disp(x_new);