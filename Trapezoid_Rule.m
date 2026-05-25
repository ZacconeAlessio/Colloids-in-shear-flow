function [Trapezoid_Result] = Trapezoid_Rule(x,f)
%UNTITLED  
%   Detailed explanation goes here
Trapezoid_Result = 0;

for i =1:length(x)-1
  Trapezoid_Result = Trapezoid_Result + (x(i+1,1)-x(i))/2*(f(i+1) + f(i));  
end
    
end

