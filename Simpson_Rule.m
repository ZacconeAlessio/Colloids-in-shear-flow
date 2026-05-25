function [Simpson_Area] = Simpson_Rule(a,b,f,N)

Simpson_Area = 0;
if(a==b)
    h = 0;
else
    h = (b-a)/(N-1);
end
Simpson_Area = h/3*(f(1,1)+ 4*sum(f(2:2:N-1,1))+ 2*sum(f(3:2:N-2,1))+f(N,1));

end

