% Author: Daniel Cubides and Leonardo Matallana
% Description: Script to cut a section of a song file, then reproduce and
% plot it.
% Date: 22/08/2015
filename = 'daze.mp3';
[soundData,samplingFreq] = audioread(filename);
%% sound (soundData,samplingFrec);
seconds = 16.5*samplingFreq-3000;
cut = zeros(seconds,2);
for i = 1:seconds
   cut(i,1) = soundData(i,1);   
   cut(i,2) = soundData(i,2);
end
audiowrite('cut.mp4',cut,samplingFreq);
sound(cut,samplingFreq);
plot(cut);