clear;
[x,y] = meshgrid(-1000:1:1000,-500:1:500);
S3 = 3*x + 2*x.*y + 10*y.^2;
mesh(x,y,S3);
title('S(x,y)');