clc;
clear all; 
close all;
f1 = input("enter frequency 1");
f2 = input("enter frequency 2");
if f1>f2
    fs = 20*f1;
    t = 0:1/fs:2/f2;
else 
    fs = 20*f2;
    t = 0:1/fs:2/f1;
end
x1 = cos (2*pi*f1*t);-
x2 = cos (2*pi*f2*t);
x = x1.*x2;
Xk= fft(x);
Xks = fftshift(Xk);
w = linspace (-fs/2, fs/2, length(Xks));
plot(w, abs(Xks));
title('Multiplication of Sinusoidal Spectra')
xlabel('Time (ms)')
ylabel('Amplitude')