%% Earth information

M_e = 5.972e24;      %[kg]
G = 6.67408e-11;     %[]
mu_e = M_e * G;
R_e = 6371e3;        %[m]
g0 = 9.81;           %[m/s2]

%% Orbit
% Initial orbit
h_0 = 200e3;         %[m]
r_0 = R_e + h_0;     %[m]

% Final orbit
SOI =9.25e8;        %[m]
r_f = SOI + R_e;     %[m]

om = sqrt(mu_e/r_0) / r_0; 
T = 2*pi / om;

%% Spacecraft
alpha = 0;          %[º]
m_i = 12000;        %[kg]
Ispg_i = 1800*g0; 
Ispg_f = 3000*g0;   
F_i = 60;           %[N]
F_f = 100;          %[N]
N = 10;             
%% Initialization

% Evaluation vectors
F_ = linspace(F_i,F_f,N);
Ispg_ = linspace(Ispg_i,Ispg_f,N);

