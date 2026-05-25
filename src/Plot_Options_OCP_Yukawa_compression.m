close all

load Pe_10_HS.txt
load Pe_10_lambda_10_kappa_2.txt
load Pe_10_lambda_20_kappa_2.txt
load Pe_10_lambda_50_kappa_1_5.txt
load Pe_10_lambda_50_kappa_2.txt
load Pe_10_lambda_50_kappa_3.txt

load Pe_1000_HS.txt
load Pe_1000_HS_lambda_50_kappa_2.txt

figure;
plot(Pe_1000_HS_lambda_50_kappa_2(:,1),Pe_1000_HS_lambda_50_kappa_2(:,2),'r','LineWidth',4);
hold on 
plot(Pe_1000_HS(:,1),Pe_1000_HS(:,2),'--k','LineWidth',4);
legend('\Gamma = 50 \kappa = 2','Hard-Sphere','location','southeast','FontSize',50);
legend('boxoff');
ax = gca;
ax.FontSize = 45;
ax.LineWidth = 1.5;
xlabel('r/\sigma ');
ylabel(' g_c(r/\sigma)');
set(gcf,'color','w');
set(gca,'TickDir','in');
ylim([0.9 max(Pe_1000_HS(:,2))+0.05*max(Pe_1000_HS(:,2))]);
xlim([1 1.06]);
gtext('(a)','Color','Black','FontSize',60);

figure;
plot(Pe_10_lambda_50_kappa_2(:,1),Pe_10_lambda_50_kappa_2(:,2),'g','LineWidth',4);
hold on
plot(Pe_10_lambda_20_kappa_2(:,1),Pe_10_lambda_20_kappa_2(:,2),'b','LineWidth',4);
hold on
plot(Pe_10_lambda_10_kappa_2(:,1),Pe_10_lambda_10_kappa_2(:,2),'Color','1 0 1','LineWidth',4);
hold on
plot(Pe_10_HS(:,1),Pe_10_HS(:,2),'--k','LineWidth',4);
legend('\Gamma = 50','\Gamma = 20','\Gamma = 10','Hard-Sphere','location','east','FontSize',50);
legend('boxoff');
ax = gca;
ax.FontSize = 40;
ax.LineWidth = 1.5;
xlabel('r/\sigma ');
ylabel(' g_c(r/\sigma)');
set(gcf,'color','w');
set(gca,'TickDir','in');
ylim([0.9 max(Pe_10_HS(:,2))+0.05*max(Pe_10_HS(:,2))]);
xlim([1 2.5]);
gtext('(a)','Color','Black','FontSize',60);

figure;
plot(Pe_10_lambda_50_kappa_1_5(:,1),Pe_10_lambda_50_kappa_1_5(:,2),'Color','1 0 1','LineWidth',4);
hold on 
plot(Pe_10_lambda_50_kappa_2(:,1),Pe_10_lambda_50_kappa_2(:,2),'b','LineWidth',4);
hold on
plot(Pe_10_lambda_50_kappa_3(:,1),Pe_10_lambda_50_kappa_3(:,2),'G','LineWidth',4);
hold on 
plot(Pe_10_HS(:,1),Pe_10_HS(:,2),'--k','LineWidth',4);
ax = gca;
ax.FontSize = 45;
ax.LineWidth = 1.5;
legend('\kappa = 1.5','\kappa = 2','\kappa = 3','Hard-Sphere','location','east','FontSize',45);
legend('boxoff');
xlabel('r/\sigma ');
ylabel(' g_c(r/\sigma)');
set(gcf,'color','w');
set(gca,'TickDir','in');
ylim([0.9 max(Pe_10_HS(:,2))+0.05*max(Pe_10_HS(:,2))]);
xlim([1 2.5]);
axes('Position',[.3 .4 .35 .45]);
box on
plot(Pe_10_lambda_50_kappa_1_5(:,1),Pe_10_lambda_50_kappa_1_5(:,2),'Color','1 0 1','LineWidth',4);
hold on 
plot(Pe_10_lambda_50_kappa_3(:,1),Pe_10_lambda_50_kappa_3(:,2),'G','LineWidth',4);
hold on
plot(Pe_10_HS(:,1),Pe_10_HS(:,2),'--k','LineWidth',4);
xlim([1.13 2.1]);
ax = gca;
ax.FontSize = 25;
ax.LineWidth = 1.0;
gtext('(b)','Color','Black','FontSize',60);
