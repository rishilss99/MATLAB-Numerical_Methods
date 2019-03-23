clear all;
clc;

f = input('Enter function f:');
g = input('Enter function g:');

f_x = input('Enter differentiation of f w.r.t. x:');
f_y = input('Enter differentiation of f w.r.t. y:');
g_x = input('Enter differentiation of g w.r.t. x:');
g_y = input('Enter differentiation of g w.r.t. y:');

x = input('Enter x0:');
y = input('Enter y0:');

for i=1:2
    D_mat = [f_x(x,y) f_y(x,y);g_x(x,y) g_y(x,y)];
    D = det(D_mat);
    if D == 0
        disp('No unique solution');
        return
    end
    h_mat = [-f(x,y) f_y(x,y);-g(x,y) g_y(x,y)];
    k_mat = [f_x(x,y) -f(x,y);g_x(x,y) -g(x,y)];
    h = (det(h_mat))/D;
    k = (det(k_mat))/D;
    x = x + h;
    y = y + k;
    disp(D_mat);
    disp(h_mat);
    disp(k_mat);
end

disp(x);
disp(y);

    
