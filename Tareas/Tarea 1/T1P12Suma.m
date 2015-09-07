
t=0:.05:10;
y=(4/pi)*sin(t);
plot(t,y,'r')
hold on

x=sin(t);
for i = 1:3
    x=x+sin(t*(i*2+1))/(i*2+1);
end
y=(4/pi)*x;
plot(t,y,'y')
hold on


x=sin(t);
for i = 1:10
    x=x+sin(t*(i*2+1))/(i*2+1);
end
y=(4/pi)*x;
plot(t,y,'g')
hold on


x=sin(t);
for i = 1:500
    x=x+sin(t*(i*2+1))/(i*2+1);
end
y=(4/pi)*x;
plot(t,y,'b');
legend('Fundamental','Suma 3 Armonicos','Suma 10 Armonicos','Suma 500 Armonicos','Location','southwest');

