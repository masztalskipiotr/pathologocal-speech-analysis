clear
clc

[syg,fs] = audioread ('m_aaa.wav');

sygfil = lpf(syg,200,fs);


time = 0:1/fs:(size(syg,1)/fs)-1/fs;
time1 = 0:1/fs:(size(sygfil,1)/fs)-1/fs;



subplot(4,1,1);
plot(time,syg(:,1));
title('Acoustic signal (unfiltered)');
ylabel('Amplitude');
xlabel('Time [s]');
subplot(4,1,2);
plot(time1,sygfil(:,1));
title('Acoustic signal (filtered)');
ylabel('Amplitude');
xlabel('Time [s]');
subplot(4,1,3);
plot(time,syg(:,2));
title('EGG (unfiltered)');
ylabel('Amplitude');
xlabel('Time [s]');
subplot(4,1,4);
plot(time1,sygfil(:,2));
title('EGG (filtered)');
ylabel('Amplitude');
xlabel('Time [s]');



[fundamentalFrequency, cycles, amplitudes]=zcm_analysis(sygfil(:,2),fs);

AA=1./cycles *fs;


jitterValue = jitter(cycles,fs);   
shimmerValue = shimmer(amplitudes); 


