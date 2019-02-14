fp = input('Enter frequency fp : ');
fs = input('Enter frequency fs: ');
rp = input('Enter frequency rp: ');
rs = input('Enter frequency rs: ');

if fp<fs
    Fs=20*fp
else
    Fs= 20*fs
end;
wp = 2*fp/Fs
ws = 2*fs/Fs
[h,wc] = buttord(wp, ws, rp, rs)
[b,a] = butter(h,wc, 'high')
[h,w] = freqz(b,a,2018,Fs);
plot(w, 20*log10(abs(h)))
grid on;