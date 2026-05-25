%%% SWITCH FOR LUBRICATION FORCES AT THE CUTOFF DISTANCE
if(strcmp(quadrants,'compressing') == 1)
    G0 = 2.*(8.*((-1)+rc)+24.*((-1)+rc).^2).*(2+26.*((-1)+rc)+24.*((-1)+rc).^2).^(-1);
else
    G0 = 2;
end

%%% EVALUATION OF THE RELATIVE VELOCITY AT THE CUTOFF DISTANCE
if(strcmp(quadrants,'compressing') == 1)
    V0 = (1+(-0.130223E2).*rc.^(-8)+0.203714E2.*rc.^(-7)+(-0.480979E1).*rc.^(-6)+(-0.353928E1).*rc.^(-5)).*rc.*alpha;
else
    V0 = rc.*alpha;
 end

%%% SWITCH FOR THE EVALUATION OF THE INTERACTION POTENTIAL AT THE CUTOFF DISTANCE
if(strcmp(potential,'Yukawa') == 1)
    dU_0 = -lambda.*exp(-rc.*kappa)/rc.^2 - kappa.*lambda.*exp(-rc.*kappa)./rc;
end
if(strcmp(potential,'Lennard-Jones') == 1)
    dU_0 = ((-12).*rc.^(-13)+6.*rc.^(-7)).*Umin;
end
