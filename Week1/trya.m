u = 5*exp(.5.*t);
plot (t, u)
hold on;
v = -5*exp(.5.*t);
plot (t, v)
hold on; 
w = 5*exp(-.5.*t);
plot (t, w)
hold on;
x = -5*exp(-.5.*t);
plot (t, x)
hold on;
axis([-10 10 -5 5]);