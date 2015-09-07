% Author: Daniel Cubides and Leonardo Matallana
% Description: Script with a 99% of removing a value for a sound vector.
% then reproduce, plot and save said vector.
% Date: 22/08/2015
filename = 'cut.mp4';
[soundData,samplingFreq] = audioread(filename);
[r,c] = size(soundData);

for i = 1:r
    X = randi(100);
    if(X<=50)
        soundData(i,1)=0;
        soundData(i,2)=0;
    end    
end
sound(soundData,samplingFreq);
plot(soundData);
audiowrite('cutP6x50.mp4',soundData,samplingFreq);
