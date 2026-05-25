clear all
close all

%%% VALIDATION FIGURE

load C:\Users\User\Desktop\PhD\Lavori_in_corso\Patched_Asymptotics\Projects\Hard_Spheres\Validation\Morris_2.txt
load C:\Users\User\Desktop\PhD\Lavori_in_corso\Patched_Asymptotics\Projects\Hard_Spheres\Validation\Morris_3.txt
load C:\Users\User\Desktop\PhD\Lavori_in_corso\Patched_Asymptotics\Projects\Hard_Spheres\Validation\Pe_1000_convalida.txt

load C:\Users\User\Desktop\PhD\Lavori_in_corso\Patched_Asymptotics\Projects\Hard_Spheres\Peclet_Number\Compressing\Pe_1000_HS_C.txt
load C:\Users\User\Desktop\PhD\Lavori_in_corso\Patched_Asymptotics\Projects\Hard_Spheres\Peclet_Number\Compressing\Pe_100_HS_C.txt
load C:\Users\User\Desktop\PhD\Lavori_in_corso\Patched_Asymptotics\Projects\Hard_Spheres\Peclet_Number\Compressing\Pe_50_HS_C.txt
load C:\Users\User\Desktop\PhD\Lavori_in_corso\Patched_Asymptotics\Projects\Hard_Spheres\Peclet_Number\Compressing\Pe_25_HS_C.txt
load C:\Users\User\Desktop\PhD\Lavori_in_corso\Patched_Asymptotics\Projects\Hard_Spheres\Peclet_Number\Compressing\Pe_10_HS_C.txt

load C:\Users\User\Desktop\PhD\Lavori_in_corso\Patched_Asymptotics\Projects\Hard_Spheres\Peclet_Number\Extensional\Pe_1000_HS_E.txt
load C:\Users\User\Desktop\PhD\Lavori_in_corso\Patched_Asymptotics\Projects\Hard_Spheres\Peclet_Number\Extensional\Pe_100_HS_E.txt
load C:\Users\User\Desktop\PhD\Lavori_in_corso\Patched_Asymptotics\Projects\Hard_Spheres\Peclet_Number\Extensional\Pe_50_HS_E.txt
load C:\Users\User\Desktop\PhD\Lavori_in_corso\Patched_Asymptotics\Projects\Hard_Spheres\Peclet_Number\Extensional\Pe_25_HS_E.txt
load C:\Users\User\Desktop\PhD\Lavori_in_corso\Patched_Asymptotics\Projects\Hard_Spheres\Peclet_Number\Extensional\Pe_10_HS_E.txt

load C:\Users\User\Desktop\PhD\Lavori_in_corso\Patched_Asymptotics\Projects\Lennard_Jones_Fluids\Microstructure_LJ\Compressing_Regions\Pe_1000_C_HS.txt
load C:\Users\User\Desktop\PhD\Lavori_in_corso\Patched_Asymptotics\Projects\Lennard_Jones_Fluids\Microstructure_LJ\Compressing_Regions\Pe_1000_C_lambda_1.txt
load C:\Users\User\Desktop\PhD\Lavori_in_corso\Patched_Asymptotics\Projects\Lennard_Jones_Fluids\Microstructure_LJ\Compressing_Regions\Pe_10_HS_C.txt
load C:\Users\User\Desktop\PhD\Lavori_in_corso\Patched_Asymptotics\Projects\Lennard_Jones_Fluids\Microstructure_LJ\Compressing_Regions\Pe_10_C_lambda_1.txt
load C:\Users\User\Desktop\PhD\Lavori_in_corso\Patched_Asymptotics\Projects\Lennard_Jones_Fluids\Microstructure_LJ\Compressing_Regions\Pe_10_C_lambda_2.txt
load C:\Users\User\Desktop\PhD\Lavori_in_corso\Patched_Asymptotics\Projects\Lennard_Jones_Fluids\Microstructure_LJ\Compressing_Regions\Pe_10_C_lambda_3.txt

load C:\Users\User\Desktop\PhD\Lavori_in_corso\Patched_Asymptotics\Projects\Lennard_Jones_Fluids\Microstructure_LJ\Extensional_Regions\Pe_1000_HS_E.txt
load C:\Users\User\Desktop\PhD\Lavori_in_corso\Patched_Asymptotics\Projects\Lennard_Jones_Fluids\Microstructure_LJ\Extensional_Regions\Pe_1000_E_lambda_1.txt
load C:\Users\User\Desktop\PhD\Lavori_in_corso\Patched_Asymptotics\Projects\Lennard_Jones_Fluids\Microstructure_LJ\Extensional_Regions\Pe_10_HS_E.txt
load C:\Users\User\Desktop\PhD\Lavori_in_corso\Patched_Asymptotics\Projects\Lennard_Jones_Fluids\Microstructure_LJ\Extensional_Regions\Pe_10_E_lambda_1.txt
load C:\Users\User\Desktop\PhD\Lavori_in_corso\Patched_Asymptotics\Projects\Lennard_Jones_Fluids\Microstructure_LJ\Extensional_Regions\Pe_10_E_lambda_2.txt
load C:\Users\User\Desktop\PhD\Lavori_in_corso\Patched_Asymptotics\Projects\Lennard_Jones_Fluids\Microstructure_LJ\Extensional_Regions\Pe_10_E_lambda_3.txt

load C:\Users\User\Desktop\PhD\Lavori_in_corso\Patched_Asymptotics\Projects\Charge_Stabilized_Particles\OCP_microstructure\Compressing\Pe_1000_C_lambda_50_kappa_2.txt
load C:\Users\User\Desktop\PhD\Lavori_in_corso\Patched_Asymptotics\Projects\Charge_Stabilized_Particles\OCP_microstructure\Compressing\Pe_1000_HS_C.txt
load C:\Users\User\Desktop\PhD\Lavori_in_corso\Patched_Asymptotics\Projects\Charge_Stabilized_Particles\OCP_microstructure\Compressing\Pe_10_HS_C.txt
load C:\Users\User\Desktop\PhD\Lavori_in_corso\Patched_Asymptotics\Projects\Charge_Stabilized_Particles\OCP_microstructure\Compressing\Pe_10_C_lambda_10_kappa_2.txt
load C:\Users\User\Desktop\PhD\Lavori_in_corso\Patched_Asymptotics\Projects\Charge_Stabilized_Particles\OCP_microstructure\Compressing\Pe_10_C_lambda_20_kappa_2.txt
load C:\Users\User\Desktop\PhD\Lavori_in_corso\Patched_Asymptotics\Projects\Charge_Stabilized_Particles\OCP_microstructure\Compressing\Pe_10_C_lambda_50_kappa_2.txt
load C:\Users\User\Desktop\PhD\Lavori_in_corso\Patched_Asymptotics\Projects\Charge_Stabilized_Particles\OCP_microstructure\Compressing\Pe_10_C_lambda_50_kappa_1_5.txt
load C:\Users\User\Desktop\PhD\Lavori_in_corso\Patched_Asymptotics\Projects\Charge_Stabilized_Particles\OCP_microstructure\Compressing\Pe_10_C_lambda_50_kappa_3.txt

load C:\Users\User\Desktop\PhD\Lavori_in_corso\Patched_Asymptotics\Projects\Charge_Stabilized_Particles\OCP_microstructure\Extensional\Pe_1000_E_lambda_50_kappa_2.txt
load C:\Users\User\Desktop\PhD\Lavori_in_corso\Patched_Asymptotics\Projects\Charge_Stabilized_Particles\OCP_microstructure\Extensional\Pe_1000_HS_E.txt
load C:\Users\User\Desktop\PhD\Lavori_in_corso\Patched_Asymptotics\Projects\Charge_Stabilized_Particles\OCP_microstructure\Extensional\Pe_10_HS_E.txt
load C:\Users\User\Desktop\PhD\Lavori_in_corso\Patched_Asymptotics\Projects\Charge_Stabilized_Particles\OCP_microstructure\Extensional\Pe_10_E_lambda_10_kappa_2.txt
load C:\Users\User\Desktop\PhD\Lavori_in_corso\Patched_Asymptotics\Projects\Charge_Stabilized_Particles\OCP_microstructure\Extensional\Pe_10_E_lambda_20_kappa_2.txt
load C:\Users\User\Desktop\PhD\Lavori_in_corso\Patched_Asymptotics\Projects\Charge_Stabilized_Particles\OCP_microstructure\Extensional\Pe_10_E_lambda_40_kappa_2.txt
load C:\Users\User\Desktop\PhD\Lavori_in_corso\Patched_Asymptotics\Projects\Charge_Stabilized_Particles\OCP_microstructure\Extensional\Pe_10_E_lambda_40_kappa_4.txt
load C:\Users\User\Desktop\PhD\Lavori_in_corso\Patched_Asymptotics\Projects\Charge_Stabilized_Particles\OCP_microstructure\Extensional\Pe_10_E_lambda_40_kappa_6.txt

figure;
plot(Morris_2(:,1),Morris_2(:,2),'LineStyle','none','Marker','o','MarkerSize',20,'MarkerFaceColor','Blue','MarkerEdgeColor','Black');
hold on
plot(Morris_3(:,1),Morris_3(:,2),'LineStyle','none','Marker','o','MarkerSize',20,'MarkerFaceColor','Red','MarkerEdgeColor','Black');
hold on
plot(Pe_1000_convalida(:,1),Pe_1000_convalida(:,2),'k','LineWidth',4); 
legend('\phi = 0.30','\phi = 0.45','Theory','location','east','FontSize',40);
legend('boxoff');
ax = gca;
ax.FontSize = 40;
ax.LineWidth = 1.5;
xlabel('$\tilde{r}$', 'Interpreter', 'latex','FontSize',45);
ylabel ('$g_s(\tilde{r})$', 'Interpreter', 'latex','FontSize',45);
set(gcf,'color','w');
set(gca,'TickDir','in','Yscale','log');
ylim([1 max(Morris_3(:,2))+0.3*max(Morris_3(:,2))]);
xlim([1 1.045]);
pbaspect([1.70 1 1 ]);
axes('Position',[.34 .44 .30 .40]);
box on
plot(Pe_1000_convalida(:,1),Pe_1000_convalida(:,2),'k','LineWidth',4);
hold on 
plot(Morris_2(:,1),Morris_2(:,2),'LineStyle','none','Marker','o','MarkerSize',15,'MarkerFaceColor','Blue','MarkerEdgeColor','Black');
hold on
plot(Morris_3(:,1),Morris_3(:,2),'LineStyle','none','Marker','o','MarkerSize',15,'MarkerFaceColor','Red','MarkerEdgeColor','Black');
ax = gca;
ax.FontSize = 25;
ax.LineWidth = 1.0;
ylim([1 max(Morris_3(:,2))+0.3*max(Morris_3(:,2))]);
set(gca,'YScale','log');
xlim([1 1.018]);
pbaspect([1.70 1 1 ]);
% 
% figure;
% plot(Pe_10_HS_C(:,1),Pe_10_HS_C(:,2),'k','LineWidth',4);
% legend('Pe = 10','location','east','FontSize',50);
% legend('boxoff');
% ax = gca;
% ax.FontSize = 40;
% ax.LineWidth = 1.5;
% xlabel('$\tilde{r}$', 'Interpreter', 'latex','FontSize',45);
% ylabel ('$g_c(\tilde{r})$', 'Interpreter', 'latex','FontSize',45);
% set(gcf,'color','w');
% set(gca,'TickDir','in');
% ylim([0.0 max(Pe_10_HS_C(:,2))+0.1*max(Pe_10_HS_C(:,2))]);
% xlim([1 1.3]);
% pbaspect([1.70 1 1 ]);
% 
% figure;
% plot(Pe_25_HS_C(:,1),Pe_25_HS_C(:,2),'k','LineWidth',4);
% legend('Pe = 25','location','east','FontSize',50);
% legend('boxoff');
% ax = gca;
% ax.FontSize = 40;
% ax.LineWidth = 1.5;
% xlabel('$\tilde{r}$', 'Interpreter', 'latex','FontSize',45);
% ylabel ('$g_c(\tilde{r})$', 'Interpreter', 'latex','FontSize',45);set(gcf,'color','w');
% set(gca,'TickDir','in');
% ylim([0.0 max(Pe_25_HS_C(:,2))+0.1*max(Pe_25_HS_C(:,2))]);
% xlim([1 1.3]);
% pbaspect([1.70 1 1 ]);
% 
% figure;
% plot(Pe_50_HS_C(:,1),Pe_50_HS_C(:,2),'k','LineWidth',4);
% legend('Pe = 50','location','east','FontSize',50);
% legend('boxoff');
% ax = gca;
% ax.FontSize = 40;
% ax.LineWidth = 1.5;
% xlabel('$\tilde{r}$', 'Interpreter', 'latex','FontSize',45);
% ylabel ('$g_c(\tilde{r})$', 'Interpreter', 'latex','FontSize',45);
% set(gcf,'color','w');
% set(gca,'TickDir','in');
% ylim([0.0 max(Pe_50_HS_C(:,2))+0.1*max(Pe_50_HS_C(:,2))]);
% xlim([1 1.3]);
% pbaspect([1.70 1 1 ]);
% 
% figure;
% plot(Pe_100_HS_C(:,1),Pe_100_HS_C(:,2),'k','LineWidth',4);
% legend('Pe = 100','location','east','FontSize',50);
% legend('boxoff');
% ax = gca;
% ax.FontSize = 40;
% ax.LineWidth = 1.5;
% xlabel('$\tilde{r}$', 'Interpreter', 'latex','FontSize',45);
% ylabel ('$g_c(\tilde{r})$', 'Interpreter', 'latex','FontSize',45);
% set(gcf,'color','w');
% set(gca,'TickDir','in');
% ylim([0.0 max(Pe_100_HS_C(:,2))+0.1*max(Pe_100_HS_C(:,2))]);
% xlim([1 1.3]);
% pbaspect([1.70 1 1 ]);
% 
% figure;
% plot(Pe_1000_HS_C(:,1),Pe_1000_HS_C(:,2),'k','LineWidth',4);
% legend('Pe = 1000','location','east','FontSize',50);
% legend('boxoff');
% ax = gca;
% ax.FontSize = 40;
% ax.LineWidth = 1.5;
% xlabel('$\tilde{r}$', 'Interpreter', 'latex','FontSize',45);
% ylabel ('$g_c(\tilde{r})$', 'Interpreter', 'latex','FontSize',45);
% set(gcf,'color','w');
% set(gca,'TickDir','in');
% ylim([0.0 max(Pe_1000_HS_C(:,2))+0.1*max(Pe_1000_HS_C(:,2))]);
% xlim([1 1.06]);
% pbaspect([1.70 1 1 ]);

% figure;
% plot(Pe_10_HS_E(:,1),Pe_10_HS_E(:,2),'k','LineWidth',4);
% legend('Pe = 10','location','east','FontSize',50);
% legend('boxoff');
% ax = gca;
% ax.FontSize = 40;
% ax.LineWidth = 1.5;
% xlabel('$\tilde{r}$', 'Interpreter', 'latex','FontSize',45);
% ylabel ('$g_e(\tilde{r})$', 'Interpreter', 'latex','FontSize',45);
% set(gcf,'color','w');
% set(gca,'TickDir','in');
% ylim([0.0 max(Pe_10_HS_E(:,2))+0.1*max(Pe_10_HS_E(:,2))]);
% xlim([1 2.5]);
% pbaspect([1.70 1 1 ]);
% 
% figure;
% plot(Pe_25_HS_E(:,1),Pe_25_HS_E(:,2),'k','LineWidth',4);
% legend('Pe = 25','location','east','FontSize',50);
% legend('boxoff');
% ax = gca;
% ax.FontSize = 40;
% ax.LineWidth = 1.5;
% xlabel('$\tilde{r}$', 'Interpreter', 'latex','FontSize',45);
% ylabel ('$g_e(\tilde{r})$', 'Interpreter', 'latex','FontSize',45);set(gcf,'color','w');
% set(gca,'TickDir','in');
% ylim([0.0 max(Pe_25_HS_E(:,2))+0.1*max(Pe_25_HS_E(:,2))]);
% xlim([1 2.5]);
% pbaspect([1.70 1 1 ]);
% 
% figure;
% plot(Pe_50_HS_E(:,1),Pe_50_HS_E(:,2),'k','LineWidth',4);
% legend('Pe = 50','location','east','FontSize',50);
% legend('boxoff');
% ax = gca;
% ax.FontSize = 40;
% ax.LineWidth = 1.5;
% xlabel('$\tilde{r}$', 'Interpreter', 'latex','FontSize',45);
% ylabel ('$g_e(\tilde{r})$', 'Interpreter', 'latex','FontSize',45);
% set(gcf,'color','w');
% set(gca,'TickDir','in');
% ylim([0.0 max(Pe_50_HS_E(:,2))+0.1*max(Pe_50_HS_E(:,2))]);
% xlim([1 2.5]);
% pbaspect([1.70 1 1 ]);
% 
% figure;
% plot(Pe_100_HS_E(:,1),Pe_100_HS_E(:,2),'k','LineWidth',4);
% legend('Pe = 100','location','east','FontSize',50);
% legend('boxoff');
% ax = gca;
% ax.FontSize = 40;
% ax.LineWidth = 1.5;
% xlabel('$\tilde{r}$', 'Interpreter', 'latex','FontSize',45);
% ylabel ('$g_e(\tilde{r})$', 'Interpreter', 'latex','FontSize',45);
% set(gcf,'color','w');
% set(gca,'TickDir','in');
% ylim([0.0 max(Pe_100_HS_E(:,2))+0.1*max(Pe_100_HS_E(:,2))]);
% xlim([1 2.5]);
% pbaspect([1.70 1 1 ]);
% 
% figure;
% plot(Pe_1000_HS_E(:,1),Pe_1000_HS_E(:,2),'k','LineWidth',4);
% legend('Pe = 1000','location','east','FontSize',50);
% legend('boxoff');
% ax = gca;
% ax.FontSize = 40;
% ax.LineWidth = 1.5;
% xlabel('$\tilde{r}$', 'Interpreter', 'latex','FontSize',45);
% ylabel ('$g_e(\tilde{r})$', 'Interpreter', 'latex','FontSize',45);
% set(gcf,'color','w');
% set(gca,'TickDir','in');
% ylim([0.0 max(Pe_1000_HS_E(:,2))+0.1*max(Pe_1000_HS_E(:,2))]);
% xlim([1 2.5]);
% pbaspect([1.70 1 1 ]);

% figure;
% plot(Pe_1000_C_lambda_1(:,1),Pe_1000_C_lambda_1(:,2),'r','LineWidth',4);
% hold on
% plot(Pe_1000_HS_C(:,1),Pe_1000_HS_C(:,2),'-- k','LineWidth',4);
% hold on
% legend('\lambda = 1','HS','location','east','FontSize',50);
% legend('boxoff');
% ax = gca;
% ax.FontSize = 40;
% ax.LineWidth = 1.5;
% xlabel('$\tilde{r}$', 'Interpreter', 'latex','FontSize',45);
% ylabel ('$g_c(\tilde{r})$', 'Interpreter', 'latex','FontSize',45);
% set(gcf,'color','w');
% set(gca,'TickDir','in');
% ylim([0 max(Pe_1000_HS_C(:,2))+0.1*max(Pe_1000_HS_C(:,2))]);
% xlim([1 1.06]);
% pbaspect([1.70 1 1]);
% 
% figure;
% plot(Pe_1000_E_lambda_1(:,1),Pe_1000_E_lambda_1(:,2),'--r','LineWidth',4);
% hold on
% plot(Pe_1000_HS_E(:,1),Pe_1000_HS_E(:,2),'k','LineWidth',4);
% legend('\lambda = 1','HS','location','southeast','FontSize',50);
% legend('boxoff');
% ax = gca;
% ax.FontSize = 40;
% ax.LineWidth = 1.5;
% xlabel('$\tilde{r}$', 'Interpreter', 'latex','FontSize',45);
% ylabel ('$g_e(\tilde{r})$', 'Interpreter', 'latex','FontSize',45);
% set(gcf,'color','w');
% set(gca,'TickDir','in');
% ylim([0.0 max(Pe_1000_HS_E(:,2))+0.1*max(Pe_1000_HS_E(:,2))]);
% xlim([1 2]);
% pbaspect([1.70 1 1]);

% figure;
% plot(Pe_10_E_lambda_3(:,1),Pe_10_E_lambda_3(:,2),'m','LineWidth',4);
% hold on
% plot(Pe_10_E_lambda_2(:,1),Pe_10_E_lambda_2(:,2),'b','LineWidth',4);
% hold on
% plot(Pe_10_E_lambda_1(:,1),Pe_10_E_lambda_1(:,2),'r','LineWidth',4);
% hold on
% plot(Pe_10_HS_E(:,1),Pe_10_HS_E(:,2),'k','LineWidth',4);
% legend('\lambda = 3','\lambda = 2','\lambda = 1','HS','location','east','FontSize',40);
% legend('boxoff');
% set(gcf,'color','w');
% set(gca,'TickDir','in');
% ax = gca;
% ax.FontSize = 40;
% ax.LineWidth = 1.5;
% xlabel('$\tilde{r}$', 'Interpreter', 'latex','FontSize',45);
% ylabel ('$g_e(\tilde{r})$', 'Interpreter', 'latex','FontSize',45);
% ylim([0.0 max(Pe_10_E_lambda_3(:,2))+0.1*max(Pe_10_E_lambda_3(:,2))]);
% xlim([1 2.5]);
% pbaspect([1.70 1 1]);
% % 
% figure;
% plot(Pe_10_C_lambda_3(:,1),Pe_10_C_lambda_3(:,2),'m','LineWidth',4);
% hold on
% plot(Pe_10_C_lambda_2(:,1),Pe_10_C_lambda_2(:,2),'b','LineWidth',4);
% hold on
% plot(Pe_10_C_lambda_1(:,1),Pe_10_C_lambda_1(:,2),'r','LineWidth',4);
% hold on 
% plot(Pe_10_HS_C(:,1),Pe_10_HS_C(:,2),'k','LineWidth',4);
% legend('\lambda = 3','\lambda = 2','\lambda = 1','HS','location','east','FontSize',40);
% legend('boxoff');
% ax = gca;
% ax.FontSize = 40;
% ax.LineWidth = 1.5;
% xlabel('$\tilde{r}$', 'Interpreter', 'latex','FontSize',45);
% ylabel ('$g_c(\tilde{r})$', 'Interpreter', 'latex','FontSize',45);
% set(gcf,'color','w');
% set(gca,'TickDir','in','YScale','log');
% ylim([0.45 max(Pe_10_C_lambda_3(:,2))+0.1*max(Pe_10_C_lambda_3(:,2))]);
% xlim([1 2]);
% pbaspect([1.70 1 1]);

% figure;
% plot(Pe_1000_C_lambda_50_kappa_2(:,1),Pe_1000_C_lambda_50_kappa_2(:,2),'r','LineWidth',4);
% hold on 
% plot(Pe_1000_HS_C(:,1),Pe_1000_HS_C(:,2),'--k','LineWidth',4);
% legend('\Gamma = 50 \kappa = 2','HS','location','southeast','FontSize',45);
% legend('boxoff');
% ax = gca;
% ax.FontSize = 40;
% ax.LineWidth = 1.5;
% xlabel('$\tilde{r}$', 'Interpreter', 'latex','FontSize',45);
% ylabel ('$g_c(\tilde{r})$', 'Interpreter', 'latex','FontSize',45);
% set(gcf,'color','w');
% set(gca,'TickDir','in');
% ylim([0.9 max(Pe_1000_HS_C(:,2))+0.05*max(Pe_1000_HS_C(:,2))]);
% xlim([1 1.06]);
% pbaspect([1.70 1 1]);
% 
% figure;
% plot(Pe_10_C_lambda_50_kappa_2(:,1),Pe_10_C_lambda_50_kappa_2(:,2),'g','LineWidth',4);
% hold on
% plot(Pe_10_C_lambda_20_kappa_2(:,1),Pe_10_C_lambda_20_kappa_2(:,2),'b','LineWidth',4);
% hold on
% plot(Pe_10_C_lambda_10_kappa_2(:,1),Pe_10_C_lambda_10_kappa_2(:,2),'Color','1 0 1','LineWidth',4);
% hold on
% plot(Pe_10_HS_C(:,1),Pe_10_HS_C(:,2),'--k','LineWidth',4);
% legend('\Gamma = 50','\Gamma = 20','\Gamma = 10','HS','location','east','FontSize',45);
% legend('boxoff');
% ax = gca;
% ax.FontSize = 40;
% ax.LineWidth = 1.5;
% xlabel('$\tilde{r}$', 'Interpreter', 'latex','FontSize',45);
% ylabel ('$g_c(\tilde{r})$', 'Interpreter', 'latex','FontSize',45);
% set(gcf,'color','w');
% set(gca,'TickDir','in');
% ylim([0.9 max(Pe_10_HS_C(:,2))+0.05*max(Pe_10_HS_C(:,2))]);
% xlim([1 2.5]);
% pbaspect([1.70 1 1]);
% 
% figure;
% plot(Pe_10_C_lambda_50_kappa_1_5(:,1),Pe_10_C_lambda_50_kappa_1_5(:,2),'Color','1 0 1','LineWidth',4);
% hold on 
% plot(Pe_10_C_lambda_50_kappa_2(:,1),Pe_10_C_lambda_50_kappa_2(:,2),'b','LineWidth',4);
% hold on
% plot(Pe_10_C_lambda_50_kappa_3(:,1),Pe_10_C_lambda_50_kappa_3(:,2),'G','LineWidth',4);
% hold on 
% plot(Pe_10_HS_C(:,1),Pe_10_HS_C(:,2),'--k','LineWidth',4);
% ax = gca;
% ax.FontSize = 40; 
% ax.LineWidth = 1.5;
% legend('\kappa = 1.5','\kappa = 2','\kappa = 3','HS','location','east','FontSize',45);
% legend('boxoff');
% xlabel('$\tilde{r}$', 'Interpreter', 'latex','FontSize',45);
% ylabel ('$g_c(\tilde{r})$', 'Interpreter', 'latex','FontSize',45);
% set(gcf,'color','w');
% set(gca,'TickDir','in');
% ylim([0.9 max(Pe_10_HS_C(:,2))+0.05*max(Pe_10_HS_C(:,2))]);
% xlim([1 2.5]);
% pbaspect([1.70 1 1]);
% axes('Position',[.3 .4 .30 .40]);
% box on
% plot(Pe_10_C_lambda_50_kappa_1_5(:,1),Pe_10_C_lambda_50_kappa_1_5(:,2),'Color','1 0 1','LineWidth',4);
% hold on 
% plot(Pe_10_C_lambda_50_kappa_3(:,1),Pe_10_C_lambda_50_kappa_3(:,2),'G','LineWidth',4);
% hold on
% plot(Pe_10_HS_C(:,1),Pe_10_HS_C(:,2),'--k','LineWidth',4);
% xlim([1.13 2.1]);
% ax = gca;
% ax.FontSize = 25;
% ax.LineWidth = 1.0;
% pbaspect([1.70 1 1]);
% 
% figure;
% plot(Pe_10_E_lambda_40_kappa_2(:,1),Pe_10_E_lambda_40_kappa_2(:,2),'Color','1 0 1','LineWidth',4);
% hold on
% plot(Pe_10_E_lambda_40_kappa_4(:,1),Pe_10_E_lambda_40_kappa_4(:,2),'b','LineWidth',4);
% hold on
% plot(Pe_10_E_lambda_40_kappa_6(:,1),Pe_10_E_lambda_40_kappa_6(:,2),'g','LineWidth',4);
% hold on 
% plot(Pe_10_HS_E(:,1),Pe_10_HS_E(:,2),'k','LineWidth',4);
% legend('\kappa = 2','\kappa = 4','\kappa = 6','HS','location','best','FontSize',45);
% legend('boxoff');
% ax = gca;
% ax.FontSize = 40;
% ax.LineWidth = 1.5;
% xlabel('$\tilde{r}$', 'Interpreter', 'latex','FontSize',45);
% ylabel ('$g_e(\tilde{r})$', 'Interpreter', 'latex','FontSize',45);
% set(gcf,'color','w');
% set(gca,'TickDir','in');
% ylim([0 max(Pe_10_HS_E(:,2))+0.1*max(Pe_10_HS_E(:,2))]);
% xlim([1 2.5]);
% pbaspect([1.70 1 1]);

% figure;
% plot(Pe_10_E_lambda_40_kappa_2(:,1),Pe_10_E_lambda_40_kappa_2(:,2),'g','LineWidth',4);
% hold on
% plot(Pe_10_E_lambda_20_kappa_2(:,1),Pe_10_E_lambda_20_kappa_2(:,2),'b','LineWidth',4);
% hold on
% plot(Pe_10_E_lambda_10_kappa_2(:,1),Pe_10_E_lambda_10_kappa_2(:,2),'Color','1 0 1','LineWidth',4);
% hold on 
% plot(Pe_10_HS_E(:,1),Pe_10_HS_E(:,2),'k','LineWidth',4);
% legend('\Gamma = 40','\Gamma = 20 ','\Gamma = 10 ','HS','location','best','FontSize',45);
% legend('boxoff');
% ax = gca;
% ax.FontSize = 40;
% ax.LineWidth = 1.5;
% xlabel('$\tilde{r}$', 'Interpreter', 'latex','FontSize',45);
% ylabel ('$g_e(\tilde{r})$', 'Interpreter', 'latex','FontSize',45);
% set(gcf,'color','w');
% set(gca,'TickDir','in');
% ylim([0 max(Pe_10_HS_E(:,2))+0.1*max(Pe_10_HS_E(:,2))]);
% xlim([1 2.5]);
% pbaspect([1.70 1 1 ]);

% figure;
% plot(Pe_1000_E_lambda_50_kappa_2(:,1),Pe_1000_E_lambda_50_kappa_2(:,2),'--r','LineWidth',4);
% hold on
% plot(Pe_1000_HS_E(:,1),Pe_1000_HS_E(:,2),'k','LineWidth',4);
% legend('\Gamma = 50 \kappa = 2','HS','location','southeast','FontSize',45);
% legend('boxoff');
% ax = gca;
% ax.FontSize = 40;
% ax.LineWidth = 1.5;
% xlabel('$\tilde{r}$', 'Interpreter', 'latex','FontSize',45);
% ylabel ('$g_e(\tilde{r})$', 'Interpreter', 'latex','FontSize',45);
% set(gcf,'color','w');
% set(gca,'TickDir','in');
% ylim([0 1.8]);
% xlim([1 2]);
% pbaspect([1.70 1 1]);
