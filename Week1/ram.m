 t = linspace (-5, 5, 20);
u = zeros (size(t));
u (t>=0)=1
z = u.*(.19.*((t.^2)/2))
plot (t,z)
axis([-15 15 -15 15])