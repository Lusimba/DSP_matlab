clc; 
clear all;
close all;
f0=1000;
ftype = 'highpass';
fs = 20*f0;
N = 150;
wc =2*f0/fs
b = fir1(N,wc, 'high')
freqz(b,1);
