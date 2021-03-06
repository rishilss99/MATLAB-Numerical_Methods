clear all;
clc;
number=input('number of equations: ');

A = input('Matrix A:');
constants=eye(number);


C=[A,constants];

for rows=1:number-1
    for cols=1:number-rows
        alpha = C(rows+cols,rows)/C(rows,rows);
        C(rows+cols,:)=C(rows+cols,:)-alpha*C(rows,:);
    end
end

for rows=number:-1:number-1
    for cols=rows-1:-1:1
        alpha = C(cols,rows)/C(rows,rows);
        C(cols,:)=C(cols,:)-alpha*C(rows,:);
    end
end
for i=1:number
    for j=1:number
        if j==i
            C(i,:)=C(i,:)/C(i,i);
        end
    end
end
sprintf('The inverted matrix is ');
disp(C(:,number+1:end));

X=zeros(number,1);

