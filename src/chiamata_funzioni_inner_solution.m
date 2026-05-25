for i = 1:length_r_integral
    
    derivata_seconda_C0(i,1) = d_Int_0(r_in_integral(i,1))+ 1/delta*(integral(@(r) Q(r),r_in_integral(1,1),r_in_integral(i,1))*d_Int_1(r_in_integral(i,1)) + R(r_in_integral(i,1)));
   
    derivata_seconda_C1(i,1) = 1/delta*(integral(@(r) T(r),r_in_integral(1,1),r_in_integral(i,1))*d_Int_1(r_in_integral(i,1))+ Z(r_in_integral(i,1)));
    
    derivata_seconda_C2(i,1) = d_Int_1(r_in_integral(i,1));
    
end

for i=1:length_r_integral
    
    derivata_prima_C0_delta(i,1) = 1/delta*integral(@(r) Q(r),r_in_integral(1,1),r_in_integral(i,1))*Int_1(r_in_integral(i,1));
    derivata_prima_C0(i,1) = Int_0(r_in_integral(i,1)) + derivata_prima_C0_delta(i,1);
    derivata_prima_C1(i,1) = 1/delta*integral(@(r) T(r),r_in_integral(1,1),r_in_integral(i,1))*Int_1(r_in_integral(i,1));
    derivata_prima_C2(i,1) = Int_1(r_in_integral(i,1));
  
end

for i =1:length_r_integral
   
    inner_solution_C0(i,1) = Trapezoid_Rule(r_in_integral(1:i,1),derivata_prima_C0(1:i,1));
    inner_solution_C1(i,1) = 1 + Trapezoid_Rule(r_in_integral(1:i,1),derivata_prima_C1(1:i,1));
    inner_solution_C2(i,1) = integral(@(r) Int_1(r), r_in_integral(1,1),r_in_integral(i,1));  

end

