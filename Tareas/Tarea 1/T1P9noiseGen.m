filename = 'cut.mp4';
[soundData,samplingFreq] = audioread(filename);
[r,c] = size(soundData);
noise = wgn(r,2,0);
plot(noise);
sound(noise,samplingFreq);
audiowrite('noise.mp4',noise,samplingFreq)