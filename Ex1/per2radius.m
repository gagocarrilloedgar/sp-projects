function r = per2radius(T,mu)

k1 = mu*T^2;
k2 = 4*pi^2;

r = (k1/k2)^(1/3);
end