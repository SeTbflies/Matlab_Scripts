clear; clc;
%Scroll to the bottom for the actual code

syms t real
r = [sin(1.65*t); 2.8*tanh((t - 3.8)/1.4); (0.1*t.^2) + (0.04*t)];

%Part 2

clear; clc;

syms t real
r = [sin(1.65*t); 2.8*tanh((t - 3.8)/1.4); (0.1*t.^2) + (0.04*t)];


%1
dr = diff(r, t);
Mag1 = norm(dr);



%2
dr2 = diff(dr, t);
Mag2 = norm(dr2);


%T(t)

T = simplify(dr/Mag1);

%Sub 4 in t




%Normal

dT = diff(T, t);
MagN = norm(dT);
N = simplify(dT/MagN);


%Binomial
B = cross(N,T);


%Curvature
K = norm(dT) / norm(dr);


% Tangential and normal acceleration components
aT = simplify(dot(dr2, T));
aN = simplify(dot(dr2, N));



%Subplots
subplot(2,2,1);
fplot3(r(1), r(2), r(3), [1.5, 9], 'b', 'LineWidth', 2);
xlabel('x')
ylabel('y')
zlabel('z')
title('3D Curve')
grid on

subplot(2,2,2);  %Tangent
fplot(aT, [1.5 9], 'b', 'LineWidth', 2)
title('Tangential Acceleration a_T'); xlabel('t'); ylabel('a_T'); grid on

subplot(2,2,3);    %Curvature

fplot(K, [1.5 9], 'r', 'LineWidth', 2)
title('Curvature'); xlabel('t'); ylabel('k'); grid on

subplot(2,2,4);        %Normal

fplot(aN, [1.5 9], 'g', 'LineWidth', 2)
title('Normal Acceleration a_N'); xlabel('t'); ylabel('a_N'); grid on