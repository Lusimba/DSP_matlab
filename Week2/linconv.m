clc;
clear all;
close all;
n = [1 2 3 4];
h = [7 8 9];
ln =  length(n);
lh = length(h);
xm = [zeros(1, ly-lx),x];
for i=1:lh;
    h(-i+lh+1)= h(i);
end
hf = [9 8 7];
hfm = [hf, zeros(1 ly-lh)];
for i = 0:lh-1;
    hfm = [zeros(1, i), hfm(1:end-i)];
end
subplot (3 1 1);
stem(t,x);
subplot(3 2 2);
stem()
