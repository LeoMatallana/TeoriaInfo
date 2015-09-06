%funcion COSENO
clear all
t = 2*10^(-6):10^(-9):2*10^(-6);
T=10^(-6);
f=1/T;
w=2*pi*f;
fase=pi/4;
A=2;
y=A*cos(w*t-fase);
plot(t,y,'b','linewidth',12);
axis([-1.5e-6,1.5e-6,-2.5,2.5]);
xlabel('t(segundos)','fontname','times','fontsize',14);
ylabel('coseno del periodo','fontname','times','fontsize',14);

