function alpha = cmptalpha(D_i,v)

% Inits
v_0 = v.i;
v_f = v.f;

% Initi inciliation of the thrust
c = (pi/2)*deg2rad(D_i);
c1 = sin(c);
v_frac =v_0/v_f;

c2 = 1 + (v_frac)^2 - 2*(v_frac)*cos(c);
a_0 = asin(c1/sqrt(c2)); % [rad]

% Final incl of the thrust
a_f = (pi/2)*deg2rad(D_i) + a_0;

alpha= struct("i",a_0,"f",a_f);
end