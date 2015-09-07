filename = 'cut.mp4';
[soundData,samplingFreq] = audioread(filename);
noisename = 'noise.mp4';
[noiseData,noiseFreq] = audioread(noisename);
[r,c] = size(soundData);
result=soundData+(noiseData*0.25);
sound(result,samplingFreq);
audiowrite('cutP9.mp4',result,samplingFreq)
plot(result);