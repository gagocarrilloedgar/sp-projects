function z = fsystmralpha(r,x)

% X(1) = alpha X(2) = i

z = zeros(2,1);
z(1) = tan(x(1)) / (2*r);
z(2) = tan(x(1)) / (pi*r);
end