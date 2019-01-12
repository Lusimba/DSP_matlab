clc;
clear all;
close all;

f1 = 1000;
f2 = 2000;
f3 = 3000;
t = (1:1/10000:2/3000);
x = cos(2*pi*f3*t);
plot (t, x);

%f1 = input('Enter the first frequency: ');
%f2 = input('Enter the second frequency: ');
%f3 = input ('Enter the third frequency');

%if f1>f2 
%    fs = 20*f1;
%    t = 

