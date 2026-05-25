%%%% SETUP OF THE INTEGRATION DOMAINS 
rc = 1 + 5d-5;  % CUT-OFF DISTANCE
lower = 5d-5;
upper = delta + lower;
expo = 1/(length_r_integral-1);
sfact = ((upper)/lower)^expo;

%%% INNER COORDINATE
r_in_integral(1,1) = rc;
for i=2:length_r_integral
    r_in_integral(i,1)= 1 + sfact*(r_in_integral(i-1,1)-1);
end

%%% OUTER COORDINATE
r_out = linspace(rc+delta,r_lim,length_r_out)';

%%% INPUT PARAMETERS FOR THE INTERACTION POTENTIAL
if strcmp(potential,'Yukawa') == 1 
    r_cutoff = 1000;
    lambda = 0;
    kappa = 0;
    U = @(r) lambda./r.*exp(-kappa.*r);
end

if(strcmp(potential,'Lennard-Jones') == 1)
    Umin = 0;
    U = @(r) Umin.*(r.^(-12)-r.^(-6));
end
