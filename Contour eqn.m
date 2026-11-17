%Make a rectangular grid on the 𝑥𝑥 − 𝑦𝑦 plane
[x,y]=meshgrid(-7:0.05:7,-7:0.05:7);
%calculate 𝑧𝑧 at all 𝑥𝑥 and 𝑦𝑦 values
z = cos(x.*y/10) .* exp( cos(x).*sin(y) + 0.15*x.*y.*exp(-(x.^2 + y.^2)/10) );

%add a colorbar to "see" the values of each contour
colorbar
%add title, labels and legends as needed
[c h]=contour(x,y,z,10);
clabel(c,h)

xlabel('x'); ylabel('y'); zlabel('z');
title('Contour');
grid on