clear all
close all
clc
fs = 5000;
T = 3;
t = -5: 10/fs:5;
a = exp(-t)
b = rectpuls(t, T);
c = tripuls(t,T);
plot (t, b)
axis([-4 4 -2 2])