clc;
clear all;
order=input('Enter the order of equation: ');

number=order+1;
x = input('Enter matrix x:');
y = input('Enter matrix y:');
x_input=input('Enter the value of X for which you want to find the answer: ');
x_matrix=ones(number,number);
for i=2:number
    for j=1:number
        x_matrix(i,j)=x(j).^(i-1);
    end
end
coeff=x_matrix'\y;
x_answer = ones(1,number);
for i=1:number
    x_answer(i)=x_input.^(i-1);
end
answer=x_answer * coeff;
disp(answer);
