clear all;
clc;
diff = input('Enter differential equation:');
y0 = input('Enter initial value of y:');
x0 = input('Enter initial value of x:');
h = input('Enter value of h:');
xn = input('Enter required value of x:');
y = y0;
for x = x0:h:xn-h
    y = y + h*diff(x,y);
    disp(y);
end

