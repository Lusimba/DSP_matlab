function engr80_august_14_2006() 
% shows how to use Matlab to animation response of one degree of 
% freedom system. 
% by Nasser Abbasi, UCI. 
 
clear all; close all; 
 
t_start = 0; 
t_end   = 6;  %final time in seconds. 
time_span =[ t_start t_end]; 
time_span =t_start:0.001:t_end; 
 
k = 100; % spring stiffness. N/m 
c = 20; % damping coeff. N-s/m 
m = 5; % mass, kg 
 
natural_damped_omega = sqrt( k/m - (c/(2*m))^2 ); 
 
fprintf('Natural damped frequency of system is %f\n',natural_damped_omega); 
 
initial_position = 0; 
initial_speed    = 0; 
 
x0 = [initial_position  initial_speed]; 
 
for omega=0:0.1:natural_damped_omega+0.1 
    [t,x]=ode45(@rhs,time_span,x0); 
    plot(t,x(:,1)); 
    title(sprintf('forcing freq=%4.1f',omega)); 
%    ylim([-.1 2]); 
    drawnow; 
%    pause(.1); 
end 
 
    grid 
 
%************************************** 
% solves m x''+ c x' + k x = f(t) 
%************************************** 
function xdot=rhs(t,x) 
 
xdot_1 = x(2); 
xdot_2 = -(c/m)*x(2) - (k/m)*x(1) + force(t)/m; 
 
 
xdot = [xdot_1 ; xdot_2 ]; 
end 
 
%******************** 
% 
%******************** 
function f=force(t) 
 
P = 100;   % force amplitude 
f=P*sin(omega*t); 
 
%f=10;  %unit step 
 
%if t<eps     %impulse 
%   f=1 
%else 
%    f=0; 
%end 
 
%f=P*t;  %ramp input 
 
end 
 
 
end