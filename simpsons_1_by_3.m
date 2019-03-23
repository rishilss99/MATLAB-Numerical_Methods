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
for i=1:1:n-1
    if rem(i,2) == 0
        result = result + 2*func(h*i);
    else
        result = result + 4*func(h*i);
    end
end
result = result * (h/3);
disp(result);