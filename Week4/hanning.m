f1= 1000;
f2=2000;
fs = 20*f2;
N = 30;
wc1 = 2*f1/fs;
wc2 = 2*f2/fs;
w = [wc1 wc2];
b = fir1(30,[0.35 0.65], hamming(N+1));
freqz(b,1);