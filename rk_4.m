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
    k2 = diff(x+h/2,y+(k1)*h*0.5);
    k3 = diff(x+h/2,y+(k2)*h*0.5);
    k4 = diff(x+h,y+(k3)*h);
    y = y + h*(1/6)*(k1+2*(k2)+2*(k3)+k4);
    disp(y);
end