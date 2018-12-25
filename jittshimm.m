function [acParameters,averageAcParameters,eggParameters,averageEggParameters] = jittshimm(path)

folder = path; 
recordings = dir(folder); 
acShimmers=[];
acJitters=[];
acFrequencies=[];
eggShimmers=[];
eggJitters=[];
eggFrequencies=[];

for i = 3:length(recordings)
    [signal,fs]=audioread(recordings(i).name); 
    filteredSignal = lpf(signal, 160, fs);
    [acFrequency, acPeriods, acAmplitudes] = zcm_analysis(filteredSignal(:,1),fs);
    [eggFrequency, eggPeriods, eggAmplitudes] = zcm_analysis(filteredSignal(:,2),fs);
    acShimmers(end+1) = shimmer(acAmplitudes);
    acJitters(end+1) = jitter(acPeriods,fs);
    acFrequencies(end+1) = acFrequency;
    eggShimmers(end+1) = shimmer(eggAmplitudes);
    eggJitters(end+1) = jitter(eggPeriods,fs);
    eggFrequencies(end+1) = eggFrequency;
end

    acParameters(:,1) = acJitters;
    acParameters(:,2) = acShimmers;
    acParameters(:,3) = acFrequencies;
    
    eggParameters(:,1) = eggJitters;
    eggParameters(:,2) = eggShimmers;
    eggParameters(:,3) = eggFrequencies;
    
    averageAcParameters(1) = mean(acParameters(:,1));
    averageAcParameters(2) = mean(acParameters(:,2));
    averageAcParameters(3) = mean(acParameters(:,3));
    
    averageEggParameters(1) = mean(eggParameters(:,1));
    averageEggParameters(2) = mean(eggParameters(:,2));
    averageEggParameters(3) = mean(eggParameters(:,3));

end


