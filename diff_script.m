clear; clc;

syms a b c x y real

%Partial Derivatives

f = c*(x.^2 + x.*y) .* exp(-b*((x-1).^2 + (y+1).^2)) + a*sin(x + y);
dfdx = diff(f,x); % 1st derivative wrt x, a
dfdy = diff(f,y); % 1st derivative wrt y, b
dfdx2 = diff(diff(f,x),x); % 2nd derivative wrt x, d
dfdxdy = diff(dfdx,y); % 2nd derivative wrt x and then y, c

disp(dfdx);
disp(dfdy);
disp(dfdx2);
disp(dfdxdy);




%a=-1, b=0.25, c=1.5, x=1, y=0.5

val1 = subs(f, [a b c x y], [1 2 3 0.5 -1]);
double(val1);
%disp(val1);
val2 = subs(dfdx, [a b c x y], [1 2 3 0.5 -1]);
val3 = subs(dfdy, [a b c x y], [1 2 3 0.5 -1]);
disp("a, b")
disp(double([val2 val3]));
val4 = subs(dfdx2, [a b c x y], [1 2 3 0.5 -1]);
val5 = subs(dfdxdy, [a b c x y], [1 2 3 0.5 -1]);
disp("d, c")
disp(double([val4 val5]));