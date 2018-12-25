function [jitt] = jitter (cycles,fs)

frequencyDifferences = 0;
addedFrequencies = 0;

for i = 2:length(cycles)-1
    frequencyDifferences = frequencyDifferences + abs((1/cycles(i)*fs)-(1/cycles(i-1)*fs));
end
for i=1:length(cycles)
    addedFrequencies = addedFrequencies + 1/cycles(i)*fs;
end

frequencyDeviation = (1/(length(cycles)-1)*frequencyDifferences);
averageFrequency = (1/length(cycles)*addedFrequencies);

jitt = (frequencyDeviation/averageFrequency)*100;
end
    
