function mfrac = computeMassBudget(Isp,g0,DV)

k2 = Isp*g0;
k3 = -DV/k2;

mfrac = 1 - exp(k3);

end