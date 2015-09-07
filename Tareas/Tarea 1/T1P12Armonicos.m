
t=0:.05:10;
y=(4/pi)*sin(t);
plot(t,y,'r')
hold on


x=sin(t*3)/3;
y=(4/pi)*x;
plot(t,y,'y');
hold on


x=sin(t*5)/5;
y=(4/pi)*x;
plot(t,y,'g');
hold on

x=sin(t*7)/7;
y=(4/pi)*x;
plot(t,y,'b');
legend('Primer Armonico / Fundamental','Segundo Armonico','Tercer Armonico','Cuarto Armonico','Location','southwest');

