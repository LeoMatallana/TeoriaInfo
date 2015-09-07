% Author: Daniel Cubides and Leonardo Matallana
% Description: Script with a 99% of removing a value for a sound vector.
% then reproduce, plot and save said vector.
% Date: 22/08/2015
filename = 'cut.mp4';
[soundData,samplingFreq] = audioread(filename);
soundData = fliplr(soundData')';
sound(soundData,samplingFreq);
plot(soundData);
audiowrite('cutP7.mp4',soundData,samplingFreq);


