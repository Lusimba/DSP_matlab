clc;
close all;
clear All;
f0=input ('enter the frequency');
fs = 20*f0;
t=0:1/fs:2/f0;
x = sin(2*pi*f0*t);
subplot(211)
plot(t,x)
title('sinusoidal Wave')
xlabel('Time (ms)')
ylabel('Amplitude')
%frequency spectrum
Xk = fft(x,256);
xkm = fftshift(Xk);
magX = abs(xkm);
w=linspace(-fs/2,fs/2, 256);
subplot(212)
plot(w, magX)
title('sinusoidal Spectrum')
xlabel('Time (ms)')
ylabel('Amplitude')