function [t,m_frac,v] = massandtime(orbit,earth,thrust)

%Velocities
v_0 = circvel(earth.mu,orbit.r_0);
v_f = circvel(earth.mu,orbit.r_f);

% Delta V & i
D_i = orbit.i_f-orbit.i_0; %deg 
D_v = edeltbaumdv(v_0,v_f,D_i);

% Time
t = D_v/thrust.a; %[sec]

% Mass frac
v_ch = sqrt((2*thrust.eff*t)/thrust.alpha);
m_frac = D_v / v_ch;

v = struct("i",v_0,"f",v_f);
end