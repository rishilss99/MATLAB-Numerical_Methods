clear all;
clc;
syms x;
in1 = input('Enter a function:');
func = inline(in1);
x0 = input('Enter x0:');
xn = input('Enter xn:');
n = input('Enter the no. of divisions:');
h = (xn-x0)/n;
result = func(x0) + func(xn);
for i=x0+h:h:xn-h
    result = result + 2*func(i);
end
result = result*(h/2);
disp(result);



