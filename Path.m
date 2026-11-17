%Part 1

clear; clc;

syms t real
r = [sin(1.65*t); 2.8*tanh((t - 3.8)/1.4); (0.1*t.^2) + (0.04*t)];

fplot3(r(1), r(2), r(3), [0, 9], 'b', 'LineWidth', 2);

xlabel('x')
ylabel('y')
zlabel('z')
title('3D Curve')
grid on

%Part B
%A

tA = solve(r(3) == 0.48, t);
disp(double(tA));
disp("yolo")

%B

tB = solve(r(2) == 2.24, t);
disp(double(tB));
disp("yolo")

