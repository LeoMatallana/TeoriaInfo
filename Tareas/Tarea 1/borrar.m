
t=0:.05:10;
y=(4/pi)*sin(t);
plot(t,y,'r')
hold on

x=sin(t);
for i = 1:1000
    x=x+sin(t*(i*2+1))/(i*2+1);
end

 

y=(4/pi)*x;
plot(t,y,'b')