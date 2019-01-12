%creating a vector string with from 0-10 with 10 numbers
x = (0:10/9:10);
y = length (x);
disp (y);

%Create a discrete sinusoidal signal of f = 1kHz
f = input('Enter a frequency')
n = input ('Enter the number of samples')
fs = n*f
t = (0:1/fs:1/f)
z = sin (2*pi*f.*t)
stem (t, z)

%signal operations
a = z.* (.5*z)
plot (t, a)

