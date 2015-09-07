% Author: Daniel Cubides and Leonardo Matallana
% Description: Script with a 99% of removing a value for a sound vector.
% then reproduce, plot and save said vector.
% Date: 22/08/2015
filename = 'cut.mp4';
[soundData,samplingFreq] = audioread(filename);
soundData = soundData*0.01;
sound(soundData,samplingFreq);
plot(mag2db(soundData));
audiowrite('cutP8x0,01.mp4',soundData,samplingFreq);
