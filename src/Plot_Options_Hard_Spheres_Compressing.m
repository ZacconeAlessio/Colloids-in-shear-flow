close all

load Pe_10_HS.txt
load Pe_25_HS.txt
load Pe_50_HS.txt
load Pe_100_HS.txt
load Pe_1000_HS.txt

figure;
plot(Pe_10_HS(:,1),Pe_10_HS(:,2),'k','LineWidth',4);
legend('Pe = 10','location','east','FontSize',50);
legend('boxoff');
ax = gca;
ax.FontSize = 40;
ax.LineWidth = 1.5;
xlabel('r/\sigma ');
ylabel(' g_c(r/\sigma)');
set(gcf,'color','w');
set(gca,'TickDir','in');
ylim([0.0 max(Pe_10_HS(:,2))+0.1*max(Pe_10_HS(:,2))]);
xlim([1 1.3]);
gtext('(e)','Color','Black','FontSize',60);

figure;
plot(Pe_25_HS(:,1),Pe_25_HS(:,2),'k','LineWidth',4);
legend('Pe = 25','location','east','FontSize',50);
legend('boxoff');
ax = gca;
ax.FontSize = 40;
ax.LineWidth = 1.5;
xlabel('r/\sigma ');
ylabel(' g_c(r/\sigma)');
set(gcf,'color','w');
set(gca,'TickDir','in');
ylim([0.0 max(Pe_25_HS(:,2))+0.1*max(Pe_25_HS(:,2))]);
xlim([1 1.3]);
gtext('(d)','Color','Black','FontSize',60);

figure;
plot(Pe_50_HS(:,1),Pe_50_HS(:,2),'k','LineWidth',4);
legend('Pe = 50','location','east','FontSize',50);
legend('boxoff');
ax = gca;
ax.FontSize = 40;
ax.LineWidth = 1.5;
xlabel('r/\sigma ');
ylabel(' g_c(r/\sigma)');
set(gcf,'color','w');
set(gca,'TickDir','in');
ylim([0.0 max(Pe_50_HS(:,2))+0.1*max(Pe_50_HS(:,2))]);
xlim([1 1.3]);
gtext('(c)','Color','Black','FontSize',60);

figure;
plot(Pe_100_HS(:,1),Pe_100_HS(:,2),'k','LineWidth',4);
legend('Pe = 100','location','east','FontSize',50);
legend('boxoff');
ax = gca;
ax.FontSize = 40;
ax.LineWidth = 1.5;
xlabel('r/\sigma ');
ylabel(' g_c(r/\sigma)');
set(gcf,'color','w');
set(gca,'TickDir','in');
ylim([0.0 max(Pe_100_HS(:,2))+0.1*max(Pe_100_HS(:,2))]);
xlim([1 1.3]);
gtext('(b)','Color','Black','FontSize',60);

figure;
plot(Pe_1000_HS(:,1),Pe_1000_HS(:,2),'k','LineWidth',4);
legend('Pe = 1000','location','east','FontSize',50);
legend('boxoff');
ax = gca;
ax.FontSize = 40;
ax.LineWidth = 1.5;
xlabel('r/\sigma ');
ylabel(' g_c(r/\sigma)');
set(gcf,'color','w');
set(gca,'TickDir','in');
ylim([0.0 max(Pe_1000_HS(:,2))+0.1*max(Pe_1000_HS(:,2))]);
xlim([1 1.06]);
gtext('(a)','Color','Black','FontSize',60);
