function [results] = pair_correlation_function_plot(r,s,f,g,length_r_integral,length_r_out)

for i=1:length_r_integral    % if we run into negative value of the rdf it becomes a null value
    if(f(i,1)<0)
        f(i,1) = 0;
    end
end
for i = 1:length_r_out
    if(g(i,1)<0)
        g(i,1) = 0;
    end
end

results = zeros(length_r_integral+length_r_out,2) ;   
results(1:length_r_integral,1) = r(1:length_r_integral,1);                % inner coordinate
results(1:length_r_integral,2) = f(1:length_r_integral,1);                % inner solution
results(length_r_integral + 1: length_r_integral + length_r_out,1) = s(1:length_r_out,1);  % outer coordinate
results(length_r_integral + 1: length_r_integral + length_r_out,2) = g(1:length_r_out,1);  % outer solution
end

