close all

load Pe_10_HS.txt
load Pe_10_lambda_1.txt
load Pe_10_lambda_2.txt
load Pe_10_lambda_3.txt
load Pe_1000_HS.txt
load Pe_1000_lambda_1.txt

figure;
plot(Pe_10_lambda_3(:,1),Pe_10_lambda_3(:,2),'m','LineWidth',4);
hold on
plot(Pe_10_lambda_2(:,1),Pe_10_lambda_2(:,2),'b','LineWidth',4);
hold on
plot(Pe_10_lambda_1(:,1),Pe_10_lambda_1(:,2),'r','LineWidth',4);
hold on 
plot(Pe_10_HS(:,1),Pe_10_HS(:,2),'k','LineWidth',4);
legend('\lambda = 3','\lambda = 2','\lambda = 1','Hard-sphere','location','east','FontSize',45);
legend('boxoff');
ax = gca;
ax.FontSize = 40;
ax.LineWidth = 1.5;
xlabel('r/\sigma ');
ylabel(' g_c(r/\sigma)');
set(gcf,'color','w');
set(gca,'TickDir','in','YScale','log');
ylim([0.45 max(Pe_10_lambda_3(:,2))+0.1*max(Pe_10_lambda_3(:,2))]);
xlim([1 2]);

figure;
plot(Pe_1000_lambda_1(:,1),Pe_1000_lambda_1(:,2),'r','LineWidth',4);
hold on
plot(Pe_1000_HS(:,1),Pe_1000_HS(:,2),'-- k','LineWidth',4);
hold on
legend('\lambda = 1','Hard-Sphere','location','east','FontSize',50);
legend('boxoff');
ax = gca;
ax.FontSize = 40;
ax.LineWidth = 1.5;
xlabel('r/\sigma ');
ylabel(' g_c(r/\sigma)');
set(gcf,'color','w');
set(gca,'TickDir','in');
ylim([0 max(Pe_1000_HS(:,2))+0.1*max(Pe_1000_HS(:,2))]);
xlim([1 1.06]);
gtext('(a)','Color','Black','FontSize',60);