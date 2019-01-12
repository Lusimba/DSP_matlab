
%---------------------------------
%
%Example solve  x''- x = c
%
%where c=1  for 0<=t<1
%      c=20 for 1<=t<2
%  c=3  for 2<=t<=3
%
%IC  x = 0, t = 0
%    x'= 1, t = 0
%


%--------------------
function  ode45_with_piecwise()

t            = 0:0.1:3;   % time scale
initial_x    = 0;
initial_dxdt = 1;

[t,x] = ode45( @rhs, t, [initial_x initial_dxdt] );

plot(t,x(:,1));
xlabel('t'); ylabel('x');

end

%--------------------
%ode45 rhs
function dxdt=rhs(t,x)
  dxdt_1 = x(2);
  dxdt_2 = x(1)+ 1*((0<=t)&(t<1)) + 20*((1<=t)&(t<=2))+ 3*((2<=t)&(t<=3));
  dxdt   = [dxdt_1; dxdt_2];
end

