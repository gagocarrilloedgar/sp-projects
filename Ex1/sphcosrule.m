function c = sphcosrule(c,A,B,varagin)

% the varargin optin changes bewtween sides and angle resolution
if ~isempty(varagin)
    q = -1;
else
    q =1;
end

x = q*cosd(A)*cosd(B) + cosd(c)*sind(A)*sind(B);
c = acosd(x);

end