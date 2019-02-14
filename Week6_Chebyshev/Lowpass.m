clc;
clear all;
close all;
fp = input('Enter fp: ');
fs = input('Enter fs: ');
rp = input('Enter rp: ');
rs = input('Enter rs: ');
if fp>fs
    Fs=20*fp
else
    Fs = 20*fs
end
wp = 2*fp/Fs
ws = 2*fs/Fs
[h, wc] = cheb1ord(wp, ws, rp, rs)
[b, a] = cheby1(h, rp, wc, 's')
[h, w] = freqs( b, a, 2018);
plot(w, 20*log10(abs(h)))
title('First Order Chebyshev Low Pass Filter')
ylabel('Magnitude (dB)')
xlabel('Frequency(rad/s)')
