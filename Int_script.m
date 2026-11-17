
clear; clc;

syms t real

u = [t;sin(t);t^2];

v = [cos(t);t+1;sin(2*t)];

g = t^2 + t*exp(-t/2);

y = 3 * (u + (2 *  g * v)); %Part a

x = int(y);  %Part b

disp(y); %Part a
disp(x);   %Part b
