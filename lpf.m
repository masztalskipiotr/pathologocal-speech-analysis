function [filteredSignal] = lpf(signal,f,fs)

fz=(2*f)/fs;

f = [0 fz 1.2*fz 1];
m = [1 1 0 0];
b = fir2(1024,f,m);

filteredSignal(:,1) = conv(signal(:,1),b);
filteredSignal(:,2) = conv(signal(:,2),b);
end
