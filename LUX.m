clear all;
clc;
a = input('Enter matrix a:');
b = input('Enter matrix b:');
[rows,cols] = size(a);
u=a;
for col=1:cols-1
    for row=col+1:rows
        if u(row,col) ~= 0
            temp = u(row,col)/u(col,col);
            u(row,:)=u(row,:)-temp*(u(col,:));            
        end
    end
end
l = a/u;
y = l\b;
x = u\y;
disp(u);
disp(l);
disp(x);
