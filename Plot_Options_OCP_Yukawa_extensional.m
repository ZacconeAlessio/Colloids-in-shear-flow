close all

load Pe_10_HS.txt
load Pe_10_lambda_10_kappa_2.txt
load Pe_10_lambda_20_kappa_2.txt
load Pe_10_lambda_40_kappa_2.txt
load Pe_10_lambda_40_kappa_4.txt
load Pe_10_lambda_40_kappa_6.txt

load Pe_1000_HS.txt
load Pe_1000_lambda_50_kappa_2.txt

figure;
plot(Pe_10_lambda_40_kappa_2(:,1),Pe_10_lambda_40_kappa_2(:,2),'Color','1 0 1','LineWidth',4);
hold on
plot(Pe_10_lambda_40_kappa_4(:,1),Pe_10_lambda_40_kappa_4(:,2),'b','LineWidth',4);
hold on
plot(Pe_10_lambda_40_kappa_6(:,1),Pe_10_lambda_40_kappa_6(:,2),'g','LineWidth',4);
hold on 
plot(Pe_10_HS(:,1),Pe_10_HS(:,2),'k','LineWidth',4);
legend('\kappa = 2','\kappa = 4','\kappa = 6','Hard-Sphere','location','best','FontSize',50);
legend('boxoff');
ax = gca;
ax.FontSize = 40;
ax.LineWidth = 1.5;
xlabel('r/\sigma ');
ylabel(' g_e(r/\sigma)');
set(gcf,'color','w');
set(gca,'TickDir','in');
ylim([0 max(Pe_10_HS(:,2))+0.1*max(Pe_10_HS(:,2))]);
xlim([1 2.5]);
gtext('(b)','Color','Black','FontSize',60);

figure;
plot(Pe_10_lambda_40_kappa_2(:,1),Pe_10_lambda_40_kappa_2(:,2),'g','LineWidth',4);
hold on
plot(Pe_10_lambda_20_kappa_2(:,1),Pe_10_lambda_20_kappa_2(:,2),'b','LineWidth',4);
hold on
plot(Pe_10_lambda_10_kappa_2(:,1),Pe_10_lambda_10_kappa_2(:,2),'Color','1 0 1','LineWidth',4);
hold on 
plot(Pe_10_HS(:,1),Pe_10_HS(:,2),'k','LineWidth',4);
legend('\Gamma = 40','\Gamma = 20 ','\Gamma = 10 ','Hard-Sphere','location','best','FontSize',50);
legend('boxoff');
ax = gca;
ax.FontSize = 40;
ax.LineWidth = 1.5;
xlabel('r/\sigma ');
ylabel(' g_e(r/\sigma)');
set(gcf,'color','w');
set(gca,'TickDir','in');
ylim([0 max(Pe_10_HS(:,2))+0.1*max(Pe_10_HS(:,2))]);
xlim([1 2.5]);
gtext('(a)','Color','Black','FontSize',60);

figure;
plot(Pe_1000_lambda_50_kappa_2(:,1),Pe_1000_lambda_50_kappa_2(:,2),'--r','LineWidth',4);
hold on
plot(Pe_1000_HS(:,1),Pe_1000_HS(:,2),'k','LineWidth',4);
legend('\Gamma = 50 \kappa = 2','Hard-Sphere','location','southeast','FontSize',50);
legend('boxoff');
legend('boxoff');
ax = gca;
ax.FontSize = 45;
ax.LineWidth = 1.5;
xlabel('r/\sigma ');
ylabel(' g_e(r/\sigma)');
set(gcf,'color','w');
set(gca,'TickDir','in');
ylim([0 1.8]);
xlim([1 2.5]);
% gtext('(b)','Color','Black','FontSize',60);

