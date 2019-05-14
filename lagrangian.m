clear all;
clc;
n = input('Enter order:');
x = input('Enter values of x:');
y = input('Enter corresponding values of y:');
p = input('Enter required value of x:');
sum=0;
for l=1:n+1
    prod =1;

    for j=1:n+1
        if l~=j
            prod = prod * ((p-x(j))/(x(l)-x(j)));
        end
    end
   sum = sum + prod*y(l);
    
end
disp(sum);

