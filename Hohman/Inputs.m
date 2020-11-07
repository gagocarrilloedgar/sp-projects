%% SpacePropulsion 1st Assigment | Hohman Transfer & Plane changes
% Authors: 
% Date 15/10/2020
% Subject: Space propulsion
%
%% Inputs
% DESCRIPTION
% Orbit input and parameters

%% Earth constants
mu = 3.986e14; % [m3 s-2] (Gravity constant for the Earth)
Rt = 6371*10^3; % m Earth radius
g0 = 9.81; %m s-2 earth acceleration

%% Hohman tranfer manouver

%Parkigng orbit parameters
hp = 200*10^3; %m --> parking's orbit heigth
rp = Rt + hp; %m --> parking's orbit radius
ip = 30; %deg --> parking's orbit inclic

% Rocket parameters
Isp = 323; %s --> specfici impulse of the thruster

% Final orbit parameter
T_final = [11 58 0]; % H min sec

% Coments
% n order to take advantage of the Earth spin velocity, 
%the orbit inclination
% must be the same as the latitude of the launch site. 
%The argument of the perigee will then be π ⁄ 2

%% Plane changing manouver
n_shift = 60; %deg --> nodal shifted 
i_final = 55; %deg
