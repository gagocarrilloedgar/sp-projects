function D_v = edeltbaumdv(v_0,v_f,D_i)

D_i = deg2rad(abs(D_i));
D_v = sqrt(v_0^2 + v_f^2 - 2*v_0*v_f*cos((pi/2)*D_i));
end