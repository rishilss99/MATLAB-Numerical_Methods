clear all;
clc;
syms x;
in1 = input('Enter a function:');
func = inline(in1);
x0 = input('Enter assumption x0:');
x_1 = input('Enter assumption x-1:');
for i=1:4
    x1 = (x_1*func(x0) - x0*func(x_1))/(func(x0)-func(x_1));
    x_1 = x0;
    x0 = x1;
end
disp(x0);
