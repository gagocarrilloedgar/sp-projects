C = 180 - i_final; % face
B = ip; % initial parking orbit angle;
a = n_shift; % the rotation the nodal point need to do --> face

A = sphcosrule(a,B,C,1);
c = sphsinerule(C,A,a);

% Devlta v and mass to create the transfeer
delta = A;
D.V3 = 2*sin(delta/2)*v_final;
m_fraci = computeMassBudget(Isp,g0,D.V3);
