clear all;
clc;
syms x;
in1 = input('Enter a function:');
func = inline(in1);
in2 = input('Enter the differentiation of the function:');
diff_1 = inline(in2);
in3 = input('Enter the double differentitation of the function:');
x0 = input('Enter value of x0:');
x_1 = x0;
x_2 = x0;
if isfloat(in3)
    for i=1:4
    x_1 = x_1 - 2*(func(x_1)/diff_1(x_1));
    x_2 = x_2 - diff_1(x_2)/in3;
    if x_1 == x_2
        break
    end
    end
else 
    diff_2 = inline(in3);
    for i=1:4
    x_1 = x_1 - 2*(func(x_1)/diff_1(x_1));
    x_2 = x_2 - diff_1(x_2)/diff_2(x_2);
    end
end
disp(x_1);
disp(x_2);
