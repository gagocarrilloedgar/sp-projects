%Circular velocity
T = time2sec(T_final);
r_final = per2radius(T,mu);
v_final = ComputeCircVelocity(mu,r_final);

%Time to transfer
a = computeSemiAxis(r_final,rp);
t_transf = time2transfer(a,mu);

%Mass fraction
v1 = ComputeCircVelocity(mu,rp); % V at parking orbit
vp = ComputeHohmanVelocity(rp,r_final,mu);

% impulse at the perigee in order to enter the ellipse orbit
D.V1 = vp - v1; 

va = ComputeHohmanVelocity(r_final,rp,mu);

% impulse to enter the final orbit
D.V2 = v_final - va; 
DV = D.V2 + D.V1;

% the propellant mass:
m_frac = computeMassBudget(Isp,g0,DV);