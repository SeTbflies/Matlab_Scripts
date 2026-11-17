
[x1, y1] = meshgrid(-7:0.05:7, -7:0.05:7);


%Surface 1
z1 = cos(x1.*y1/10) .* exp( cos(x1).*sin(y1) + 0.15*x1.*y1.*exp(-(x1.^2 + y1.^2)/10) );
surf(x1, y1, z1, 'FaceAlpha', 0.7, 'FaceColor', 'interp', 'EdgeColor', 'black');
hold on;

%Surface 2
%Rectangular Domain
[z2, y2] = meshgrid(-3.5:0.05:3.5, -2.8:0.05:2.8);


%Eqn
x2 = (-4*y2 + y2.^3)/2;
surf(x2, y2, z2, 'FaceColor', 'blue');

hold on;

%Curve of Intersection
x3 = (-4*t + t.^3)/ 2;
y3 = t;
z3 = cos(((-4*t + t.^3)/ 2).*t/10) .* exp( cos((-4*t + t.^3)/ 2).*sin(t) + 0.15*((-4*t + t.^3)/ 2).*t.*exp(-(((-4*t + t.^3)/ 2).^2 + t.^2)/10) );
t = linspace(-2.8, 2.8, 1000);   %t is on x axis


plot3(x3, y3, z3, 'LineWidth', 20, 'Color', 'g')

hold on;

%Contour


[c h]=contour(x1,y1,z1,10);
clabel(c,h)

colormap(parula); colorbar; grid on;
xlabel('x'); ylabel('y'); zlabel('z');
legend('Surface 1', 'Surface 2','Intersection', 'Contour')

title('All plots in 1 Plot');

hold off;
