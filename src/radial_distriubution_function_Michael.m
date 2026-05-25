clear all
close all
Gamma = [1,5,10,20]; 
K = 2;
figure;
for i =1:length(Gamma)
    Upmf = @(r) Gamma(i)./r.*exp(-sqrt(3.*Gamma(i)+K.^2).*r); 
    fplot(Upmf,[1 2.5],'LineWidth',2);
    hold on
end
U_DH = @(r) Gamma(1)./r*exp(-K.*r);
graph_U_pmf = fplot(U_DH,[1 2.5],'--g','LineWidth',2);
title('Mean potential considering  \kappa = 2')
xlabel ('r/a ')
ylabel('\beta U_{mpf}')
legend('\Gamma = 1','\Gamma = 5','\Gamma = 10','\Gamma = 20','D-H \Gamma = 1','location','northeast');
set(gcf,'color','w')
ax = gca;
ax.FontSize = 30;

figure;
for i =1:length(Gamma)
    Upmf_strong_coupling = @(r) Gamma(i)./r.*exp(-sqrt(3.*Gamma(i)./(1+3.*Gamma(i))+K.^2).*r);
    fplot(Upmf_strong_coupling,[1 2.5],'LineWidth',2);
    hold on
end
fplot(U_DH,[1 2.5],'--g','LineWidth',2);
title('Mean potential considering strong coupling and \kappa = 2')
xlabel ('r/a ')
ylabel('\beta U_{mpf}^{sc}')
legend('\Gamma = 1','\Gamma = 5','\Gamma = 10','\Gamma = 20','D-H \Gamma = 1','location','northeast');set(gcf,'color','w')
ax = gca;
ax.FontSize = 30;
