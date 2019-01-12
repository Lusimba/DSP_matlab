clear all
close all
clc

fs = 5000;
T = 3;
t = -5: 10/fs:5;
a = exp(-t)
b = rectpuls(t, T);
c = tripuls(t,T);

ustep = zeros (size (t));
us(t>=0) = 1;
%Outputs
u = exp(-3.*t).*(cos(20.*t-20)) %underdamped
v = exp(-1.*t).*(cos(20.*t-20)) %critically damped
w = exp(-.1.*t).*(cos(20.*t-20)) %overdamped
x = sin (20.*t).*b %rectangular pulse
y = sin (20.*t).*c %triangular pulse

plot (t, w, 'k')
axis ([-10 10 -1.5 1.5])