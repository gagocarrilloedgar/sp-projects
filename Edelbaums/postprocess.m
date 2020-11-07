function postprocess(alpha_r,i_r,r_v,t,m_frac)

str = "The orbit time is: " + sec2hms(t);
fprintf(str);
fprintf("\n");
fprintf("The mass fraction is: %.4f",m_frac);


%plots
figure (1);
yyaxis left;
plot(r_v/1000,rad2deg(alpha_r.ode));
title("Thrust tilt [$\alpha$] and inclination [$i$] evolution","FontWeight","bold",'Interpreter','latex');
xlabel("r [km]",'Interpreter','latex');
ylabel('$ \alpha [^{\circ}] $','Interpreter','latex');
yyaxis right;
plot(r_v/1000,rad2deg(i_r.ode));
ylabel("i $[^{\circ}]$",'Interpreter','latex');


figure (2);
yyaxis left;
plot(r_v/1000,rad2deg(alpha_r.an));
title("Thrust tilt [$\alpha$] and inclination [$i$] evolution analytical","FontWeight","bold",'Interpreter','latex');
xlabel("r [km]",'Interpreter','latex');
ylabel('$ \alpha [^{\circ}] $','Interpreter','latex');
yyaxis right;
plot(r_v/1000,rad2deg(i_r.an));
ylabel("i $[^{\circ}]$",'Interpreter','latex');

end