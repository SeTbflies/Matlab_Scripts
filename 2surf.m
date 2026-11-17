%Part1, question c

%Rectangular Domain
[z, y] = meshgrid(-3.5:0.05:3.5, -2.8:0.05:2.8);


%Eqn
x = (-4*y + y.^3)/2;
surf(x, y, z, 'FaceColor', 'blue');

xlabel('x'); ylabel('y'); zlabel('z');
title('Surface 2');