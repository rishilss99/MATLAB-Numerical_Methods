clear all;
clc;
a = input('Enter matrix a:');
b = input('Enter matrix b:');
[rows,cols] = size(a);
for col=1:cols-1
    for row=col:rows-1
        temp = a(row+1,col)/a(col,col);
        a(row+1,:)=a(row+1,:)-temp*a(col,:);
        b(row+1,:)=b(row+1,:)-temp*b(col,:);
    end
end
x = zeros(rows,1);
for i=rows:-1:1
    x(i,1)=(b(i,1)-a(i,:)*x(:,1))/a(i,i);
end
disp(x);

