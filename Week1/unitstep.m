t = linspace (-10, 10, 20)';
ustep = zeros (size (t));
ustep((t+3)>=0) = 1;
stem(t, ustep);
