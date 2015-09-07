
quality=5;
frequency=1;

filename = 'cut.mp4';
[soundData,samplingFreq] = audioread(filename);
[r,c] = size(soundData);
sample = round(r/quality);
sampleFreq = (samplingFreq*frequency)/quality;
result = zeros(sample,2);
for i = 1:sample-1
   result(i,1) = soundData(i*quality,1);   
   result(i,2) = soundData(i*quality,2);
end
plot(result);
sound(result,sampleFreq);
%%audiowrite('cutP10x1x2.mp4',result,sampleFreq); can´t record the sound.