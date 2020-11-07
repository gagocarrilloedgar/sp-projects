function z = Fsyst(t,x,mu,F,Ispg,alpha)

% x(1) -> r
% x(2) -> theta
% x(r) -> vr
% x(4) -> vth
% x(5) -> m

r2 = x(1)^2;
z = zeros(5,1);

z(1,1) = x(3);
z(2,1) = x(4)/x(1);
z(3,1) = -mu/r2 + x(4)^2 / x(1) + (F/x(5))*sind(alpha);
z(4,1) = -x(3)*x(4)/x(1) + (F/x(5))*cosd(alpha);
z(5,1) = -F/Ispg;
end