t = linspace (-10, 10, 200);
u = 5*exp(.5.*t);
v = -5*exp(.5.*t);
w = 5*exp(-.5.*t);
x = -5*exp(-.5.*t);
plot (t, u)
hold on;
plot (t, v)
hold on;
plot (t, w)
hold on;
plot (t, x)
hold on;
axis([-10 10 -5 5]);
grid on

