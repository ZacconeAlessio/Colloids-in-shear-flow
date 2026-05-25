 %%%MATLAB SCRIPT WHICH SOLVES THE SMOLUCHOWSKI CONVECTION-DIFFUSION EQUATION IN SPHERICAL COORDINATES

%%% SOLVING THE OUTER SOLUTION

if(strcmp(potential,'Yukawa') == 1)
    if(strcmp(quadrants,'compressing') == 1)
        
        chiamata_funzioni_outer_solution_OCP_Yukawa_compressing
        
    else
        chiamata_funzioni_outer_solution_OCP_Yukawa_extensional
    end
end
if(strcmp(potential,'Lennard-Jones') == 1)
    if(strcmp(quadrants,'compressing'))
        chiamata_funzioni_outer_solution_LJ_compressing
    else
         chiamata_funzioni_outer_solution_LJ_extensional
    end
end

for i=1:length_r_out
    g_out_0(i,1) = 1/(1-A(r_out(i,1))) * exp(integral( @(r) Leading_order_LJ_out(r) ,r_out(i,1),r_lim) ); 
    g_out_1(i,1) = F(i,1)*g_out_0(i,1);
    g_out(i,1) = g_out_0(i,1) + epsilon*g_out_1(i,1);
end
d_g_out  = (Y(r_out(1:length_r_out,1))+epsilon.*(F(1:length_r_out,1).*Y(r_out(1:length_r_out,1))+dF(r_out(1:length_r_out,1)))).*g_out_0(1:length_r_out,1);
d2_g_out = (Y(r_out(1:length_r_out,1)).^2 + dY(r_out(1:length_r_out,1))+ epsilon.*(d2F(r_out(1:length_r_out,1))+2.*Y(r_out(1:length_r_out,1)).*dF(r_out(1:length_r_out,1))+F(1:length_r_out,1).*dY(r_out(1:length_r_out,1))+F(1:length_r_out,1).*Y(r_out(1:length_r_out,1)).^2)).*g_out_0(1:length_r_out,1);

%%% SOLVING THE INNER SOLUTION
if(strcmp(potential,'Yukawa') == 1)
    if(strcmp(quadrants,'compressing') == 1)
        chiamata_funzioni_OCP_Yukawa_compressing
    else
          chiamata_funzioni_OCP_Yukawa_extensional
    end
end

if(strcmp(potential,'Lennard-Jones')== 1)
    if(strcmp(quadrants,'compressing') == 1)
        chiamata_funzioni_LJ_compressing
    else
        chiamata_funzioni_LJ_extensional
    end
end

%%% BEGINNING OF THE PATCHING PROCEDURE
chiamata_funzioni_inner_solution

g_in_C0 = inner_solution_C0(length_r_integral,1);
g_in_C1 = inner_solution_C1(length_r_integral,1);
g_in_C2 = inner_solution_C2(length_r_integral,1);
g_in_C3 = delta;

dg_in_C0 = derivata_prima_C0(length_r_integral,1);
dg_in_C1 = derivata_prima_C1(length_r_integral,1);
dg_in_C2 = derivata_prima_C2(length_r_integral,1);
dg_in_C3 = 0.0;

d2g_in_C0 = derivata_seconda_C0(length_r_integral,1);
d2g_in_C1 = derivata_seconda_C1(length_r_integral,1);
d2g_in_C2 = derivata_seconda_C2(length_r_integral,1);
d2g_in_C3 = 0.0;

chiamata_funzioni_flusso_nullo

if(strcmp(boundary,'null_flux') == 1) %%% BALANCE BETWEEN ADVECTIVE AND DIFFUSIVE PART AT THE REFERENCE PARTICLE SURFACE
           
    M = [g_in_C0, g_in_C1,g_in_C2,g_in_C3;dg_in_C0,dg_in_C1,dg_in_C2,dg_in_C3; d2g_in_C0,d2g_in_C1,d2g_in_C2,d2g_in_C3;...
        (G0*dU_0-4*Pe*V0)*inner_solution_C0(1,1) + G0*derivata_prima_C0(1,1),(G0*dU_0-2*Pe*V0)*inner_solution_C1(1,1) + G0*derivata_prima_C1(1,1),...
        (G0*dU_0-4*Pe*V0)*inner_solution_C2(1,1) + G0*derivata_prima_C2(1,1),(G0*dU_0-2*Pe*V0)*g_in_C3];
    
    G = [g_out(1,1);d_g_out(1,1);d2_g_out(1,1);0.0d0];
    C = linsolve(M,G);
    
    g_in(1:length_r_integral,1)    = C(1,1)*inner_solution_C0(1:length_r_integral,1) + C(2,1)*inner_solution_C1(1:length_r_integral,1)+ C(3,1)*inner_solution_C2(1:length_r_integral,1)+ C(4,1)*g_in_C3;
    d_g_in(1:length_r_integral,1)  = C(1,1)*derivata_prima_C0(1:length_r_integral,1) + C(2,1)*derivata_prima_C1(1:length_r_integral,1)+ C(3,1)*derivata_prima_C2(1:length_r_integral,1);
    d2_g_in(1:length_r_integral,1) = C(1,1)*derivata_seconda_C0(1:length_r_integral,1) + C(2,1)*derivata_seconda_C1(1:length_r_integral,1)+C(3,1)*derivata_seconda_C2(1:length_r_integral,1);
    flux = g_in(1,1) * (G0*dU_0-2*Pe*V0) + G0*d_g_in(1,1);
    
else  %%% APPLICATION OF THE IMMEDIATE STICK CONDITION
    
   M = [inner_solution_C0(length_r_integral,1), inner_solution_C2(length_r_integral,1);dg_in_C0,dg_in_C2];
   G = [g_out(1,1);d_g_out(1,1)];
   C = linsolve(M,G);
  
   g_in(1:length_r_integral,1) = C(1,1)*inner_solution_C0(1:length_r_integral,1) + C(2,1)*inner_solution_C2(1:length_r_integral,1);
   d_g_in(1:length_r_integral,1) = C(1,1)*derivata_prima_C0(1:length_r_integral,1) + C(2,1)*derivata_prima_C2(1:length_r_integral,1);
   
end

results = pair_correlation_function_plot(r_in_integral,r_out,g_in,g_out,length_r_integral,length_r_out);

if strcmp(equilibrium,'yes') == 1
    %%% Plot dof the equilibrium pair correlation function for the requested potential
    g_in_eq = exp(- U(r_in_integral));
    g_out_eq = exp(- U(r_out));
    results_equilibrium(1:length_r_integral,1) = r_in_integral;
    results_equilibrium(length_r_integral + 1: length_r_integral + length_r_out,1) = r_out;
    results_equilibrium(1:length_r_integral,2) = g_in_eq;
    results_equilibrium(length_r_integral + 1: length_r_integral + length_r_out,2) = g_out_eq;  
end

