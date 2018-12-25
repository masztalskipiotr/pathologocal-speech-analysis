function [frequency, reducedPeriods, reducedAmplitudes] = zcm_analysis(sig,fs)

zerosCrossed = 0;
periodCounter = 0;
periodsAdded = 0;
periods = [];
amplitude = 0;
amplitudes = [];

for sample=2:1:length(sig)
    if sig(sample) > amplitude
        amplitude = sig(sample);
    end
    if abs(sign(sig(sample)) - sign(sig(sample-1)))/2 == 1
        zerosCrossed = zerosCrossed + 1;
        if zerosCrossed == 2
            periodCounter = periodCounter + 1;
            zerosCrossed = 0;
            period = sample - periodsAdded;
            periodsAdded = periodsAdded + period;
            periods(end+1) = period;
            amplitudes(end+1) = amplitude;
            amplitude = 0;
        end
    end
end

averagePeriod = (length(sig)/periodCounter)/fs;
frequency = 1/averagePeriod;

reducedPeriods = periods((round(0.1*length(periods))):(length(periods)-(round(0.1*length(periods)))));
reducedAmplitudes = amplitudes((round(0.1*length(amplitudes))):(length(amplitudes)-(round(0.1*length(amplitudes)))));

end