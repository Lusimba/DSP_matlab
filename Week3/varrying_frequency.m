%Plotting varrying frequencies on a plot
clc;
clear all;
close all;
f  = input('Enter frequency1: ');
f1 = input('Enter frequency2: ');
f2 = input('Enter frequency3: ');
t=linspace(0,4,1000);
y = sin(2*pi*f*t);
plot (t,y)

hold on
y1 = sin(2*pi*f1*t);
t=linspace(4,8,1000);
plot(t,y1)
 
hold on
y2 = sin(2*pi*f2*t);
t=linspace(8,12,1000);
plot(t,y2)
ylim([-2 2])
title('A Plot of Varrying Sinusoidal Frequencies')
xlabel('Time (ms)')  
ylabel('Amplitude')

