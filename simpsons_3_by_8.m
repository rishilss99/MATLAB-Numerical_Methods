clear all;
clc;
syms x;
in1 = input('Enter a function:');
func = inline(in1);
x0 = input('Enter x0:');
xn = input('Enter xn:');
n = input('Enter the no. of divisions:');
h = (xn-x0)/n;
result = 0;
for i = 0:n
    if i==0 | i ==n
        result = result + func(i*h);
    elseif rem(i,3)==0
        result = result + 2*func(i*h);
    else
        result = result + 3*func(i*h);
    end
end
result = result*((3*h)/8);
disp(result);