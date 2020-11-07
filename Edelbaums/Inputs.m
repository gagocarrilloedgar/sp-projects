%% EXERCISE 1
% Space propulsion
% Authors: Casanovas, Marc
%          Gago, Edgar
%          Graells Edu
%          Ibañez, Carlos
% Date 29/10/2020
% Description
% Inputs of the problem & physical constants definition

%% Earth information

M_e = 5.972e24;      %[kg]
G = 6.67408e-11;     %[]
mu_e = M_e * G;
R_e = 6371e3;        %[m]
g0 = 9.81;           %[m/s2]

%Struct allocation
earth = struct("M",M_e,"G",G,"mu",mu_e,"R",R_e,"g",g0);

%% Orbits
% Initial orbit
h_0 = 200e3;         %[m]
r_0 = R_e + h_0;     %[m]
i_0 = 28;            %[deg]

% Final orbit
GEO =35786e3;        %[m]
r_f = GEO + R_e;     %[m]
i_f = 0;             %[deg]

%Struct allocation
orbit = struct("r_0",r_0,"i_0",i_0,"r_f",r_f,"i_f",i_f);

%% Thruster info
alpha = 30e-3;          %[kgW-1]
eff = 0.6;
acc_t = 0.0005;      %[ms-2]

%Struct allocation
thrust = struct("alpha",alpha,"eff",eff,"a",acc_t);