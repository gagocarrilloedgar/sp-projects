%% EXERCISE 1
% Space propulsion
% Authors: Casanovas, Marc
%          Gago, Edgar
%          Graells Edu
%          Ibañez, Carlos
% Date 29/10/2020
%

%% Inputs
Inputs

%% Mass & Time
[t,m_frac,v] = massandtime(orbit,earth,thrust);

%% Alpha and i as function of r
alpha = cmptalpha(D_i,v);
[alpha_r,i_r,r_v] = cmptalphaincl(orbit,alpha);

%% Postprocess
postprocess(alpha_r,i_r,r_v,t,m_frac);





