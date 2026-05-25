% Workspace Initialization
clc
clear all
close all

Physical_Constants_Perturbation

%%% MAIN SIMULATION INPUTS
potential = 'Yukawa';                  % OPTIONS : Lennard-Jones, Yukawa (Hard sphere choosing lambda = Umin = 0 for every potential adopted)
quadrants = 'compressing';             % OPTIONS: compressing, extensional
hydrodynamics = 'yes';                 % OPTIONS: yes/no hydrodynamic interactions (lubrication forces)
Pe = 1000;                             % Péclet number
epsilon = 1/Pe;                        % Perturbation parameter
delta = 1/Pe;                          % width of the boundary layer: for high Peclet it is proportional to the perturbation parameter

if(strcmp(quadrants,'compressing') == 1)
    alpha = - 1./(3.*Pi);
else
    alpha = 1./(3.*Pi);
end
equilibrium = 'no';                    % possibility to plot the equilibrium pair correlation function for the considered potential
boundary = 'null_flux';                % Switch for the boundary condition (null_flux and immediate_stick available)

% Introduction and initizalization of the key variables within this work
key_variables
Initialization_vector_quantities
Initialization_potential_grid
Initialization_hydrodynamic_functions
Patched_Asymptotics_main