clear all;
clc;
diff = input('Enter differential equation:');
y0 = input('Enter initial value of y:');
x0 = input('Enter initial value of x:');
h = input('Enter value of h:');
xn = input('Enter required value of x:');
y = y0;
for x = x0:h:xn-h
    k1 = diff(x,y);
    k2 = diff(x+h,y+(k1)*h);
    y = y + h*(0.5)*(k1+k2);
    disp(y);
end