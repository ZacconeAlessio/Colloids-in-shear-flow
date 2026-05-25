clear all
close all

figure;
A =  @(r) 113.2568893./(2*r).^5 + 307.8264828./(2*r).^6 - 2607.54064288./(2*r).^7 + 3333.72020041./(2*r).^8;
fplot(A,[1 3.5],'k','LineWidth',7);
hold on 
load A_fit.txt
plot(A_fit(:,1)./2 + 1, A_fit(:,2),'o','MarkerFaceColor','Red','MarkerEdgeColor','Black','MarkerSize',22 );
ax = gca;
ax.FontSize = 40;
ax.LineWidth = 1.5;
legend({'Fit','Original data'}, 'Location','east', 'FontSize',50);
legend('boxoff');
set(gca,'LineWidth',1.5);
set(gca,'TickDir','out');
xlabel ('r/\sigma');
ylabel(' A(r/\sigma) ');
set(gcf,'color','w');
xlim([ 1 3.5]);
ylim([ 0 1]);
box on;

figure;
B =  @(r) 0.96337157./(2.*r - 1.90461683).^(1.99517070) - 0.93850774./(2.*r -1.90378420).^(2.01254004);
fplot(B,[1 3.5],'k','LineWidth',7);
hold on 
load B_fit.txt
plot(B_fit(:,1)./2 + 1, B_fit(:,2),'o','MarkerFaceColor','Red','MarkerEdgeColor','Black','MarkerSize',22 );
ax = gca;
ax.FontSize = 40;
ax.LineWidth = 1.5;
legend({'Fit','Original data'}, 'Location','east', 'FontSize',50);
legend('boxoff');
set(gca,'LineWidth',1.5)
set(gca,'TickDir','out');
xlabel ('r/\sigma');
ylabel(' B(r/\sigma) ');
set(gcf,'color','w');
xlim([ 1 3.5]);
ylim([ 0 0.3]);
box on;

figure;
G =  @(r) ((6.*(2.*(r - 1)).^2 + 4.*(2.*(r - 1)))./(6.*(2.*(r - 1)).^2 + 13.*(2.*(r - 1))+2));
fplot(G,[1 10],'k','LineWidth',7);
hold on 
load G_fit.txt
plot(G_fit(:,1), G_fit(:,2),'o','MarkerFaceColor','Red','MarkerEdgeColor','Black','MarkerSize',22 );
ax = gca;
ax.FontSize = 40;
ax.LineWidth = 1.5;
set(gca,'LineWidth',1.5)
set(gca,'TickDir','out');
xlabel ('r/\sigma');
ylabel(' G(r/\sigma) ');
set(gcf,'color','w');
xlim([ 1 10]);
ylim([ 0 1.2]);
box on;