function [alpha_r,i_r,r_v] = cmptalphaincl(orbit,alpha)

%Initialization
r_0 = orbit.r_0;
r_f = orbit.r_f;
i_0 = orbit.i_0;
i_f = orbit.i_f;

% Radius distribution
r_v = linspace(r_0,r_f,50);

% Using MATLAB function
% ode initial conditions:
x_i = [alpha.i,deg2rad(i_0)];
[r_v,x_]  = ode45(@fsystmralpha,r_v,x_i);

% analytical
alpha_r_2 = asin( sqrt(r_v/r_0) * sin(alpha.i));
i_r_2 = (2/pi) * (alpha_r_2 - alpha.i) + deg2rad(i_0);

% struct allocation
alpha_r = struct("ode",x_(:,1),"an",alpha_r_2);
i_r = struct("ode",x_(:,2),"an",i_r_2);
end