% segundo punto
% Definir el tiempo
t = 0:2*10^(-3):1;

% S4_1 con amplitud, frecuencia y fase constantes, A = 5, f = 5, fase de cero
% La frecuencia, la amplitud y la fase son numeros aleatorios constantes

A1i = randi([5,5],1,5);
F1i = randi([5,5],1,5);
O1i = randi([0,0],1,5);

% S4_2 con frecuencia y fase constantes, A = [1-5], f = 5, fase de cero
A2i = randi([1,5],1,5);
F2i = randi([5,5],1,5);
O2i = randi([0,0],1,5);

% S4_3 con amplitud y fase constantes, A = 5, f = [1-5], fase de cero
A3i = randi([5,5],1,5);
F3i = randi([1,5],1,5);
O3i = randi([0,0],1,5);

% S4_4 con fase constante, A = [1-5], f = [1-5], fase de cero
A4i = randi([1,5],1,5);
F4i = randi([1,5],1,5);
O4i = randi([0,0],1,5);

% S4_5 A = [1-5], f = [1-5], fase = [1-20]
A5i = randi([1,5],1,5);
F5i = randi([1,30],1,5);
O5i = randi([1,20],1,5);

for i = 1 : 5
   for k = 1:size(t,2)
       S1(i,k) = A1i(i)*sin(2*pi*F1i(i)*t(k)+O1i(i)*t(k));  
       S2(i,k) = A2i(i)*sin(2*pi*F2i(i)*t(k)+O2i(i)*t(k));  
       S3(i,k) = A3i(i)*sin(2*pi*F3i(i)*t(k)+O3i(i)*t(k));  
       S4(i,k) = A4i(i)*sin(2*pi*F4i(i)*t(k)+O4i(i)*t(k));  
       S5(i,k) = A5i(i)*sin(2*pi*F5i(i)*t(k)+O5i(i)*t(k));  
   end
end

for k1 = 1 : size(t,2)
  S4_1(k1) = sum(S1(:,k1)); 
  S4_2(k1) = sum(S2(:,k1));
  S4_3(k1) = sum(S3(:,k1));
  S4_4(k1) = sum(S4(:,k1));
  S4_5(k1) = sum(S5(:,k1));
end
plot(t,S1,'r*')
hold on
plot(t,S2,'g')
hold on
plot(t,S3,'black')
hold on
plot(t,S4,'b')
hold on
%plot(t,S2,'g*')
%hold on
%plot(t,S3,'black--')
%plot(t,S1,'r')
%plot(t,S4_1,'r');
%hold on
%plot(t,S4_2,'b');
%hold on
%plot(t,S4_3,'g');
%hold on
%plot(t,S4_4,'r');
%hold on
%plot(t,S4_5,'black');