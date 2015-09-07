% Author: Daniel Cubides and Leonardo Matallana
% Description: Script to record, reproduce and plot a signal voice
% Date: 22/08/2015
recObj = audiorecorder;
disp('Empezar Grabaci�n...');
recordblocking(recObj, 5);
disp('Fin de la Grabaci�n...');
disp('Inicio de reporducion de la grabacion');
play(recObj);
y = getaudiodata(recObj);
plot(y);