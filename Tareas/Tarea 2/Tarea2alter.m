% Definir el tiempo
t = -10:0.01:10;

% Definir Amplitud, frecunecia y Fase para la señal original
A1i = 1;
F1i = 1;
O1i = 1;

% Definir Amplitud, frecunecia y Fase para la señal 2
A2i = 4;
F2i = 4;
O2i = 4;

% Definir Amplitud, frecunecia y Fase para la señal 3
A3i = 2;
F3i = 2;
O3i = 3;

% Definir Amplitud, frecunecia y Fase para la señal 4
A4i = 5;
F4i = 5;
O4i = 5;

subplot(2,2,1);
x1= A1i*sin(F1i*t*pi  +  O1i);
title('SumaProyectoss');
plot(t,x1);

subplot(2,2,2)
x2= x1 + A2i*sin(F2i*t*pi  +  O2i);
plot(t,x2);


subplot(2,2,3)
x3= x2 + A3i*sin(F3i*t*pi  +  O3i);
plot(t,x3);

subplot(2,2,4)
x4= x3 + A4i*sin(F4i*t*pi  +  O4i);
plot(t,x4);
