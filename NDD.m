clc;
clear all;
order=input('Enter the order of equation: ');

number=order+1;
x=input('Enter x input matrix:');
y=input('Enter y input matrix:');
matrix=zeros(number,number+1);
matrix(:,1:2)=[x,y];
for j=3:number+1   
    for i=1:number
        if(i < length(matrix(:,1))-(j-3))  
            matrix(i,j)= (matrix(i+1,j-1)-matrix(i,j-1))/(matrix(i+j-2,1)-matrix(i,1));   
        end
      
    end
end
coeff=matrix(1,2:end);
x_input=input('Enter the x value: ');
x_matrix=ones(order+1,1);
for i=2:length(x)
    x_matrix(i)=(x_matrix(i-1)*(x_input-x(i-1)));
end
answer=coeff*x_matrix;
disp(answer);