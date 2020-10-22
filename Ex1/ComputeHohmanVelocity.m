
% r2 --> will be the final if computing v_perigee
% r1 --> will be the initial if computing v_perigee

function v = ComputeHohmanVelocity(r1,r2,mu)

k = (r1+r2)*r1;

v = sqrt(2 * mu*(r2/k ));
end