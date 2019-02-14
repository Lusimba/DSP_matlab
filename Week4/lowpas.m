clc; 
clear all;
close all;
f0=1000;
ftype = 'lowpass';
fs = 20*f0;
N = 15;
wc =2*f0/fs
b = fir1(N,wc)
freqz(b,1);
