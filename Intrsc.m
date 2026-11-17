%Part 3
x = (-4*t + t.^3)/ 2;
y = t;
z = cos(((-4*t + t.^3)/ 2).*t/10) .* exp( cos((-4*t + t.^3)/ 2).*sin(t) + 0.15*((-4*t + t.^3)/ 2).*t.*exp(-(((-4*t + t.^3)/ 2).^2 + t.^2)/10) );
t = linspace(-2.8, 2.8, 1000);   %t is on x axis


plot3(x, y, z, 'LineWidth', 3, 'Color', 'b')

xlabel('x'); ylabel('y'); zlabel('z');
title('Intersection Curve');