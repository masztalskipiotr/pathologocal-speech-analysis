function [shimm] = shimmer(amplitudes)

amplitudeDifferences = 0;
addedAmplitudes = 0;

for i = 2:length(amplitudes)-1
    amplitudeDifferences = amplitudeDifferences + abs((amplitudes(i))-(amplitudes(i-1)));
end
for i=1:length(amplitudes)
    addedAmplitudes = addedAmplitudes + amplitudes(i);
end

amplitudeDeviation = (1/(length(amplitudes)-1)*amplitudeDifferences);
averageAmplitude = (1/length(amplitudes)*addedAmplitudes);

shimm = (amplitudeDeviation/averageAmplitude)*100;
end
    