
%Part1, question b

%Rectangular Domain
[x, y] = meshgrid(-7:0.05:7, -7:0.05:7);


%Eqn
z = cos(x.*y/10) .* exp( cos(x).*sin(y) + 0.15*x.*y.*exp(-(x.^2 + y.^2)/10) );
surf(x, y, z, 'FaceAlpha', 0.8, 'FaceColor', 'interp', 'EdgeColor', 'none');
colormap(turbo); colorbar; grid on;
xlabel('x'); ylabel('y'); zlabel('z');
title('Surface 1');