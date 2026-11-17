%Part 2

clear; clc;

syms t real
r = [sin(1.65*t); 2.8*tanh((t - 3.8)/1.4); (0.1*t.^2) + (0.04*t)];


%1
dr = diff(r, t);
Mag1 = norm(dr);
disp(dr);  %Velocity
disp(Mag1); %Its Normal


%2
dr2 = diff(dr, t);
Mag2 = norm(dr2);
disp(dr2);  %Acceleration
disp(Mag2);   %Its Normal

%T(t)

T = simplify(dr/Mag1);
disp("The T");
disp(T);

%Sub 4 in t


disp(double(subs(T, t, 4)));

%Normal

dT = diff(T, t);
MagN = norm(dT);
N = simplify(dT/MagN);
disp("The N");
disp(double(subs(N, t, 4)));

%Binomial
B = cross(N,T);
disp("The B");
disp(double(subs(B, t, 4)));

%Curvature
K = norm(dT) / norm(dr);
disp("Curvature");
disp(double(subs(K, t, 4)));

% Tangential and normal acceleration components
aT = simplify(dot(dr2, T));
aN = simplify(dot(dr2, N));
disp("Tangential acceleration");
disp(double(subs(aT, t, 4)));
disp("Normal acceleration");
disp(double(subs(aN, t, 4)));
