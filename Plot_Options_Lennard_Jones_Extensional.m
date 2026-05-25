close all
clear all

load Pe_10_HS.txt
load Pe_10_lambda_1.txt
load Pe_10_lambda_2.txt
load Pe_10_lambda_3.txt

load Pe_1000_HS.txt
load Pe_1000_lambda_1.txt

syms r 

figure;
plot(Pe_1000_lambda_1(:,1),Pe_1000_lambda_1(:,2),'--r','LineWidth',4);
hold on
plot(Pe_1000_HS(:,1),Pe_1000_HS(:,2),'k','LineWidth',4);
legend('\lambda = 1','Hard-Spheres','location','southeast','FontSize',45);
legend('boxoff');
ax = gca;
ax.FontSize = 40;
ax.LineWidth = 1.5;
xlabel('r/\sigma ');
ylabel(' g_e(r/\sigma)');
set(gcf,'color','w');
set(gca,'TickDir','in');
ylim([0.0 max(Pe_1000_HS(:,2))+0.1*max(Pe_1000_HS(:,2))]);
xlim([1 2]);
gtext('(b)','Color','Black','FontSize',60);

figure;
plot(Pe_10_lambda_3(:,1),Pe_10_lambda_3(:,2),'m','LineWidth',4);
hold on
plot(Pe_10_lambda_2(:,1),Pe_10_lambda_2(:,2),'b','LineWidth',4);
hold on
plot(Pe_10_lambda_1(:,1),Pe_10_lambda_1(:,2),'r','LineWidth',4);
hold on
plot(Pe_10_HS(:,1),Pe_10_HS(:,2),'k','LineWidth',4);
legend('\lambda = 3','\lambda = 2','\lambda = 1','Hard-Sphere','location','east','FontSize',45);
legend('boxoff');
set(gcf,'color','w');
set(gca,'TickDir','in');
ax = gca;
ax.FontSize = 40;
ax.LineWidth = 1.5;
xlabel('r/\sigma ');
ylabel(' g_e(r/\sigma)');
ylim([0.0 max(Pe_10_lambda_3(:,2))+0.1*max(Pe_10_lambda_3(:,2))]);
xlim([1 2.5]);

% figure;
% Umin = 4;
% U = @(r) Umin.*(r.^(-12)-r.^(-6));
% fplot( U(r),[1 2.5],'k','LineWidth',4);
% hold on 
% Umin = 8;
% U = @(r) Umin.*(r.^(-12)-r.^(-6));
% fplot(U(r),[1 2.5],'r','LineWidth',4);
% hold on 
% Umin = 12;
% U = @(r) Umin.*(r.^(-12)-r.^(-6));
% fplot(U(r),[1 2.5],'b','LineWidth',4);
% hold on
% plot([1 1],[0 3.3],'-- k','Linewidth',4);
% hold on 
% plot([1 1],[0 2],'--r','Linewidth',4);
% hold on
% plot([1 1],[0 1],'--b','Linewidth',4);
% ax = gca;
% ax.FontSize = 35;
% ax.LineWidth = 1.5;
% legend('\lambda = 1','\lambda = 2','\lambda = 3 ','location','best','FontSize',40);
% legend('boxoff');
% set(gcf,'color','w');
% set(gca,'TickDir','in');
% xlabel('r/\sigma ');
% ylabel(' U(r/\sigma)/(k_{B}T)');
% xlim([0.9 2.2]);
% ylim([- 3.3 3.3]);