figure(1);
fprintf("The transfer time is:" + sec2hms(t_end(1,1)));
fprintf("\n");
fprintf("The mass fraction is: %.4f",m_frac(1,1)/m_i);

plot(x(:,1).*cos(x(:,2)), x(:,1).*sin(x(:,2)));
axis equal;
grid on;
title("Orbit","Interpreter","latex","FontSize",13);
ylabel("y position [m]", "FontSize",13, "Interpreter","latex");
xlabel("x position [m]", "FontSize",13, "Interpreter","latex");


figure(2);
grid off;
contourf(F_,Ispg_,m_frac','ShowText','on');
title("Final mass [kg]","Interpreter","latex","FontSize",13);
ylabel("$I_{sp}g [s]$", "FontSize",13, "Interpreter","latex");
xlabel("$Thrust [N]$", "FontSize",13, "Interpreter","latex");

figure(3);
contourf(F_,Ispg_,t_end','ShowText','on');
title("Time flight [s]","Interpreter","latex","FontSize",13);
ylabel("$I_{sp}g [ms^{-1}]$", "FontSize",13, "Interpreter","latex");
xlabel("$Thrust [N]$", "FontSize",13, "Interpreter","latex");

figure(4);
contourf(F_,Ispg_,elapsed','ShowText','on');
title("Elapsed time [s]","Interpreter","latex","FontSize",13);
ylabel("$I_{sp}g [ms^{-1}]$", "FontSize",13, "Interpreter","latex");
xlabel("$Thrust [N]$", "FontSize",13, "Interpreter","latex");