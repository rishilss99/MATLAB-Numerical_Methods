clc;
clear all;
order=input('Enter the order of the equation: ');
number=input('Enter the number of datapoints: ');
x = input('Matrix x:');
y = input('Matrix y:');    
x_sum = ones(order +1,order +1);
y_sum = ones(order +1,1);
for i=1:(order+1)
    for j=1:(order+1)
        x_sum(i,j)= sum(x.^(i+j-2));
        y_sum(i)=sum(x.^(i-1).*y);
    end
end
weights=(x_sum)\y_sum;
disp(weights)
disp(log(y));