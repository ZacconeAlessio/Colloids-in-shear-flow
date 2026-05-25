r_in_integral = zeros(length_r_integral,1); % inner coordinate
r_out = zeros(length_r_out,1);                  % outer coordinate
g_in = zeros(length_r_integral,1);                   % inner solution inizialization
g_out = zeros(length_r_out,1);                  % outer solutuion inizialization
G = zeros(4,1);                             % vector with values of the outer function and its derivative at r = delta
M = zeros(4,4);                             % Matrix with the coefficients of ginC_i, dginC_i
C = zeros(4,1);                             % vector of the constant evaluated by patching