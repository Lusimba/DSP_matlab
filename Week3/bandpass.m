f1= 9000;
f2=10000;
fs = 5*f2;
N = 30;
wc1 = 2*f1/fs;
wc2 = 2*f2/fs;
w = [wc1 wc2];
b = fir1(48,[wc1 wc2]);
freqz(b,1, 512);