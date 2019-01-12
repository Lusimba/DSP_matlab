%unit step, unit impulse, sin, cos waves
t = linspace (-10, 10, 200)';
ustep = zeros (size (t));
us(t>=0) = 1;
impulse(t==0)= 0;
ramp = t.*(t>=0); % ramp function
quad = t.^2.*ustep %quadratic function
sine = sin (2*t);
cosine = cos (5*t);
%exponentials (4 cases)
u = 5*exp(.5.*t);
hold on;
v = -5*exp(.5.*t);
hold on; 
w = 5*exp(-.5.*t);
hold on;
x = -5*exp(-.5.*t);
hold on;
axis([-10 10 -5 5]);
hold on;

n = input('Enter a number')
switch n
    case 0
        plot (t,us, 'linewidth', 3); grid on;
    case 1
        t = (-1:0.01:1)';
        impulse = t==0;
        plot(t,[impulse])
        axis([-1 1 0 1]);
        plot (t,impulse, 'linewidth', 3); grid on;
    case 2
        plot (t,ramp, 'linewidth', 3); grid on;
    case 3
        plot (t,quad, 'linewidth', 3); grid on;
    case 4
        plot (t,sine, 'linewidth', 3); grid on;
    case 5
        plot (t,cosine, 'linewidth', 3); grid on;
    case 6
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
end

