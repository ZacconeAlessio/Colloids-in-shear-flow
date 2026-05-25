clear all
close all

load Leading_Order_Morris_Paper.txt
load Leading_Order_solution.txt

figure;
plot(Leading_Order_solution(:,1),Leading_Order_solution(:,2),'k','LineWidth',4);
hold on 
plot(Leading_Order_Morris_Paper(:,1),Leading_Order_Morris_Paper(:,2),'--r','LineWidth',1,'Marker','o','MarkerSize',18,'MarkerFaceColor','red');
ax = gca;
ax.FontSize = 40;
ax.LineWidth = 1.5;
set(gca,'LineWidth',1.5);
set(gca,'TickDir','out');
xlabel ('r/\sigma');
ylabel(' g^{out}_0 ');
set(gcf,'color','w');
xlim([ 1 1.6]);
ylim([ 0 10]);
box on;