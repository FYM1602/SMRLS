% p1 = [0.1,0.62,0.35,0.3];
% p2 = [0.5,0.62,0.35,0.3];
% p3 = [0.1,0.25,0.35,0.3];
% p4 = [0.5,0.25,0.35,0.3];

p1 = [0.09,0.62,0.35,0.25];
p2 = [0.5,0.62,0.35,0.25];
p3 = [0.09,0.25,0.35,0.25];
p4 = [0.5,0.25,0.35,0.25];
Yp = [Y-error4; Y-error3; Y-error2; Y-error1; Y];
Ep = [error4; error3; error2; error1];
t = dt*(0:n_steps);
%%
%Fig.5-1
% figure(1);
% subplot('position',p1)
% plot(t,Yp,'LineWidth',1);
% set(gca,'FontName','Times New Roman','FontSize',14,'LineWidth',0.5);
% xlabel('Time(s)','FontName','Times New Roman','FontSize',18,'LineWidth',0.5,'interpreter','latex');
% ylabel('Approximation of $f_I(x)$','FontName','Times New Roman','FontSize',18,'LineWidth',0.5,'interpreter','latex');
% legend('SMRLS','VDFRLS','FFRLS','SGD','$f_I(x)$','interpreter','latex','Location','northwest');
% 
% subplot('position',p2)
% plot(t,Ep,'LineWidth',1);
% set(gca,'FontName','Times New Roman','FontSize',14,'LineWidth',0.5);
% xlabel('Time(s)','FontName','Times New Roman','FontSize',18,'LineWidth',0.5,'interpreter','latex');
% ylabel('Approximation Error $e_f$','FontName','Times New Roman','FontSize',18,'LineWidth',0.5,'interpreter','latex');
% legend('SMRLS','VDFRLS','FFRLS','SGD','interpreter','latex','Location','northwest');
% axes('position',[0.55 0.658 0.1 0.08]);
% plot(t(2500:4000),Ep(1:3,2500:4000),'LineWidth',1);
% set(gca,'FontName','Times New Roman','FontSize',12,'LineWidth',0.5);


%%
%Fig.5-2
% figure(2);
% subplot('position',p1)
% plot(t,w4,'LineWidth',1);
% set(gca,'FontName','Times New Roman','FontSize',14,'LineWidth',0.5);
% xlabel('Time(s)','FontName','Times New Roman','FontSize',18,'LineWidth',0.5,'interpreter','latex');
% ylabel('Evolving $W$','FontName','Times New Roman','FontSize',18,'LineWidth',0.5,'interpreter','latex');
% title('(a) SMRLS','FontName','Times New Roman','FontSize',18,'LineWidth',0.5,'interpreter','latex');
% 
% subplot('position',p2)
% plot(t,w3,'LineWidth',1);
% set(gca,'FontName','Times New Roman','FontSize',14,'LineWidth',0.5);
% xlabel('Time(s)','FontName','Times New Roman','FontSize',18,'LineWidth',0.5,'interpreter','latex');
% ylabel('Evolving $W$','FontName','Times New Roman','FontSize',18,'LineWidth',0.5,'interpreter','latex');
% title('(b) VDFRLS','FontName','Times New Roman','FontSize',18,'LineWidth',0.5,'interpreter','latex');
% 
% subplot('position',p3)
% plot(t,w2,'LineWidth',1);
% set(gca,'FontName','Times New Roman','FontSize',14,'LineWidth',0.5);
% xlabel('Time(s)','FontName','Times New Roman','FontSize',18,'LineWidth',0.5,'interpreter','latex');
% ylabel('Evolving $W$','FontName','Times New Roman','FontSize',18,'LineWidth',0.5,'interpreter','latex');
% title('(c) FFRLS','FontName','Times New Roman','FontSize',18,'LineWidth',0.5,'interpreter','latex');
% 
% 
% subplot('position',p4)
% plot(t,w1,'LineWidth',1);
% set(gca,'FontName','Times New Roman','FontSize',14,'LineWidth',0.5);
% xlabel('Time(s)','FontName','Times New Roman','FontSize',18,'LineWidth',0.5,'interpreter','latex');
% ylabel('Evolving $W$','FontName','Times New Roman','FontSize',18,'LineWidth',0.5,'interpreter','latex');
% title('(d) SGD','FontName','Times New Roman','FontSize',18,'LineWidth',0.5,'interpreter','latex');


%%
%Fig.5-3
% figure(3);
% subplot('position',p1)
% plot(t,Yp,'LineWidth',1);
% set(gca,'FontName','Times New Roman','FontSize',14,'LineWidth',0.5);
% xlim([0,50]);
% xlabel('Time(s)','FontName','Times New Roman','FontSize',18,'LineWidth',0.5,'interpreter','latex');
% ylabel('Approximation of $f_I(x)$','FontName','Times New Roman','FontSize',18,'LineWidth',0.5,'interpreter','latex');
% legend('SMRLS','VDFRLS','FFRLS','SGD','$f_I(x)$','interpreter','latex','Location','northeast');
% axes('position',[0.2 0.65 0.1 0.08]);
% plot(t(1950:2150),Yp(1:3,1950:2150),'LineWidth',1);
% hold on;
% plot(t(1950:2150),Yp(5,1950:2150),'LineWidth',1,'color',[0.4660 0.6740 0.1880]);
% 
% 
% subplot('position',p2)
% plot(t,Ep,'LineWidth',1);
% set(gca,'FontName','Times New Roman','FontSize',14,'LineWidth',0.5);
% xlim([0,50]);
% xlabel('Time(s)','FontName','Times New Roman','FontSize',18,'LineWidth',0.5,'interpreter','latex');
% ylabel('Approximation Error $e_f$','FontName','Times New Roman','FontSize',18,'LineWidth',0.5,'interpreter','latex');
% legend('SMRLS','VDFRLS','FFRLS','SGD','interpreter','latex','Location','northeast');

%%
%Fig.5-4
% figure(4);
% subplot('position',p1)
% plot(t,Yp,'LineWidth',1);
% set(gca,'FontName','Times New Roman','FontSize',14,'LineWidth',0.5);
% xlabel('Time(s)','FontName','Times New Roman','FontSize',18,'LineWidth',0.5,'interpreter','latex');
% ylabel('Approximation of $f_I(x)$','FontName','Times New Roman','FontSize',18,'LineWidth',0.5,'interpreter','latex');
% legend('SMRLS','VDFRLS','FFRLS','SGD','$f_I(x)$','interpreter','latex','Location','northwest');
% axes('position',[0.22 0.65 0.1 0.08]);
% plot(t(7980:8050),Yp(1:3,7980:8050),'LineWidth',1);
% hold on;
% plot(t(7980:8050),Yp(5,7980:8050),'LineWidth',1,'color',[0.4660 0.6740 0.1880]);
% 
% subplot('position',p2)
% plot(t,Ep,'LineWidth',1);
% set(gca,'FontName','Times New Roman','FontSize',14,'LineWidth',0.5);
% xlabel('Time(s)','FontName','Times New Roman','FontSize',18,'LineWidth',0.5,'interpreter','latex');
% ylabel('Approximation Error $e_f$','FontName','Times New Roman','FontSize',18,'LineWidth',0.5,'interpreter','latex');
% legend('SMRLS','VDFRLS','FFRLS','SGD','interpreter','latex','Location','northwest');
% axes('position',[0.62 0.65 0.1 0.08]);
% plot(t(5000:7000),Ep(1:3,5000:7000),'LineWidth',1);
% set(gca,'FontName','Times New Roman','FontSize',12,'LineWidth',0.5);

%%
%Fig. 5-5
% figure(5);
% subplot('position',p1)
% plot(t,N4,'LineWidth',1);
% hold on;
% plot(t,N3,'LineWidth',1);
% hold on;
% plot(t,N2,'LineWidth',1);
% hold on;
% plot(t,N1,'LineWidth',1);
% set(gca,'FontName','Times New Roman','FontSize',14,'LineWidth',0.5);
% xlabel('Time(s)','FontName','Times New Roman','FontSize',18,'LineWidth',0.5,'interpreter','latex');
% ylabel('Evolving $\left\| W \right\|$','FontName','Times New Roman','FontSize',18,'LineWidth',0.5,'interpreter','latex');
% legend('SMRLS','VDFRLS','FFRLS','SGD','interpreter','latex','Location','northwest');

%%
%Fig. 5-6
% figure(6);
% subplot('position',p1)
% plot(t,Yp,'LineWidth',1);
% set(gca,'FontName','Times New Roman','FontSize',14,'LineWidth',0.5);
% xlabel('Time(s)','FontName','Times New Roman','FontSize',18,'LineWidth',0.5,'interpreter','latex');
% ylabel('Approximation of $f_I(x)$','FontName','Times New Roman','FontSize',18,'LineWidth',0.5,'interpreter','latex');
% legend('SMRLS','VDFRLS','FFRLS','SGD','$f_I(x)$','interpreter','latex','Location','northeast');
% axes('position',[0.2 0.65 0.1 0.08]);
% plot(t(1950:2150),Yp(1:3,1950:2150),'LineWidth',1);
% hold on;
% plot(t(1950:2150),Yp(5,1950:2150),'LineWidth',1,'color',[0.4660 0.6740 0.1880]);
% 
% 
% subplot('position',p2)
% plot(t,Ep(1:3,:),'LineWidth',1);
% set(gca,'FontName','Times New Roman','FontSize',14,'LineWidth',0.5);
% xlabel('Time(s)','FontName','Times New Roman','FontSize',18,'LineWidth',0.5,'interpreter','latex');
% ylabel('Approximation Error $e_f$','FontName','Times New Roman','FontSize',18,'LineWidth',0.5,'interpreter','latex');
% legend('SMRLS','VDFRLS','FFRLS','interpreter','latex','Location','northeast');

%%
%Fig. 5-7
figure(7);
subplot('position',p1);
plot(X1,X2,'LineWidth',1);
hold on;
plot(X1(12400:12700),X2(12400:12700),'LineWidth',1,'color','r');
hold on;
plot(X1(21400:22200),X2(21400:22200),'LineWidth',1,'color','r');
set(gca,'FontName','Times New Roman','FontSize',14,'LineWidth',0.5);
xlim([-1,1]);
ylim([-1,1]);
xlabel('Angular Position $x_1$','FontName','Times New Roman','FontSize',18,'LineWidth',0.5,'interpreter','latex');
ylabel('Angular Velocity $x_2$','FontName','Times New Roman','FontSize',18,'LineWidth',0.5,'interpreter','latex');
text(X1(12600),X2(12600),'$(i)$','FontSize',12,'interpreter','latex');
text(X1(21900),X2(21900),'$(ii)$','FontSize',12,'interpreter','latex');

subplot('position',p2);
plot(t,Y,'color',[0.9290 0.6940 0.1250],'LineWidth',1);
set(gca,'FontName','Times New Roman','FontSize',14,'LineWidth',0.5);
xlabel('Time(s)','FontName','Times New Roman','FontSize',18,'LineWidth',0.5,'interpreter','latex');
ylabel('$f_I(x)$ along $\mu(x(0))$','FontName','Times New Roman','FontSize',18,'LineWidth',0.5,'interpreter','latex');

%%
%Fig. 5-8
% figure(8);
% subplot('position',p1)
% plot(t,Ep(1:3,:),'LineWidth',1);
% ylim([-2,3]);
% set(gca,'FontName','Times New Roman','FontSize',14,'LineWidth',0.5);
% xlabel('Time(s)','FontName','Times New Roman','FontSize',18,'LineWidth',0.5,'interpreter','latex');
% ylabel('Approximation Error $e_f$','FontName','Times New Roman','FontSize',18,'LineWidth',0.5,'interpreter','latex');
% legend('SMRLS','VDFRLS','FFRLS','interpreter','latex','Location','northwest');
% axes('position',[0.26 0.77 0.08 0.06]);
% plot(t(11500:12700),Ep(1:3,11500:12700),'LineWidth',1);
% title('$(i)$','FontName','Times New Roman','FontSize',12,'interpreter','latex');
% set(gca,'FontName','Times New Roman','FontSize',12,'LineWidth',0.5);
% axes('position',[0.36 0.77 0.08 0.06]);
% plot(t(21400:22200),Ep(1:3,21400:22200),'LineWidth',1);
% title('$(ii)$','FontName','Times New Roman','FontSize',12,'interpreter','latex');
% set(gca,'FontName','Times New Roman','FontSize',12,'LineWidth',0.5);
% 
% subplot('position',p2)
% plot(t,N4,'LineWidth',1);
% hold on;
% plot(t,N3,'LineWidth',1);
% hold on;
% plot(t,N2,'LineWidth',1);
% set(gca,'FontName','Times New Roman','FontSize',14,'LineWidth',0.5);
% xlabel('Time(s)','FontName','Times New Roman','FontSize',18,'LineWidth',0.5,'interpreter','latex');
% ylabel('Evolving $\left\| W \right\|$','FontName','Times New Roman','FontSize',18,'LineWidth',0.5,'interpreter','latex');
% legend('SMRLS','VDFRLS','FFRLS','interpreter','latex','Location','northwest');

%%
%Fig. 5-9
% figure(9);
% subplot('position',p1)
% plot(t,Ep(1:3,:),'LineWidth',1);
% ylim([-2,3]);
% set(gca,'FontName','Times New Roman','FontSize',14,'LineWidth',0.5);
% xlabel('Time(s)','FontName','Times New Roman','FontSize',18,'LineWidth',0.5,'interpreter','latex');
% ylabel('Approximation Error $e_f$','FontName','Times New Roman','FontSize',18,'LineWidth',0.5,'interpreter','latex');
% legend('SMRLS','VDFRLS','FFRLS','interpreter','latex','Location','northwest');
% axes('position',[0.26 0.77 0.08 0.06]);
% plot(t(11500:12700),Ep(1:3,11500:12700),'LineWidth',1);
% title('$(i)$','FontName','Times New Roman','FontSize',12,'interpreter','latex');
% set(gca,'FontName','Times New Roman','FontSize',12,'LineWidth',0.5);
% axes('position',[0.36 0.77 0.08 0.06]);
% plot(t(21400:22200),Ep(1:3,21400:22200),'LineWidth',1);
% title('$(ii)$','FontName','Times New Roman','FontSize',12,'interpreter','latex');
% set(gca,'FontName','Times New Roman','FontSize',12,'LineWidth',0.5);

%%
%Fig. 5-10
% figure(10);
% subplot('position',p1)
% plot(t,Ep(1:3,:),'LineWidth',1);
% ylim([-2,3]);
% set(gca,'FontName','Times New Roman','FontSize',14,'LineWidth',0.5);
% xlabel('Time(s)','FontName','Times New Roman','FontSize',18,'LineWidth',0.5,'interpreter','latex');
% ylabel('Approximation Error $e_f$','FontName','Times New Roman','FontSize',18,'LineWidth',0.5,'interpreter','latex');
% legend('SMRLS','VDFRLS','FFRLS','interpreter','latex','Location','northwest');

%%
%Fig. 5-11
% figure(11);
% subplot('position',p1);
% plot(X1,X2,'LineWidth',1);
% xlim([-1,1]);
% ylim([-1,1]);
% set(gca,'FontName','Times New Roman','FontSize',14,'LineWidth',0.5);
% xlabel('Angular Position $x_1$','FontName','Times New Roman','FontSize',18,'LineWidth',0.5,'interpreter','latex');
% ylabel('Angular Velocity $x_2$','FontName','Times New Roman','FontSize',18,'LineWidth',0.5,'interpreter','latex');

%%
%Fig.5-12
% figure(12);
% subplot('position',p1)
% plot(t,Yp,'LineWidth',1);
% set(gca,'FontName','Times New Roman','FontSize',14,'LineWidth',0.5);
% xlabel('Time(s)','FontName','Times New Roman','FontSize',18,'LineWidth',0.5,'interpreter','latex');
% ylabel('Approximation of $f_I(x)$','FontName','Times New Roman','FontSize',18,'LineWidth',0.5,'interpreter','latex');
% legend('SMRLS','VDFRLS','FFRLS','SGD','$f_I(x)$','interpreter','latex','Location','northwest');
% axes('position',[0.22 0.65 0.1 0.08]);
% plot(t(7980:8050),Yp(1:4,7980:8050),'LineWidth',1);
% hold on;
% plot(t(7980:8050),Yp(5,7980:8050),'LineWidth',1,'color',[0.4660 0.6740 0.1880]);
% 
% subplot('position',p2)
% plot(t,Ep,'LineWidth',1);
% set(gca,'FontName','Times New Roman','FontSize',14,'LineWidth',0.5);
% xlabel('Time(s)','FontName','Times New Roman','FontSize',18,'LineWidth',0.5,'interpreter','latex');
% ylabel('Approximation Error $e_f$','FontName','Times New Roman','FontSize',18,'LineWidth',0.5,'interpreter','latex');
% legend('SMRLS','VDFRLS','FFRLS','SGD','interpreter','latex','Location','northwest');
% axes('position',[0.62 0.65 0.1 0.08]);
% plot(t(5000:7000),Ep(1:3,5000:7000),'LineWidth',1);
% set(gca,'FontName','Times New Roman','FontSize',12,'LineWidth',0.5);

%%
%Fig. 5-13
% figure(13);
% subplot('position',p1)
% plot(t,N4,'LineWidth',1);
% hold on;
% plot(t,N3,'LineWidth',1);
% hold on;
% plot(t,N2,'LineWidth',1);
% hold on;
% plot(t,N1,'LineWidth',1);
% set(gca,'FontName','Times New Roman','FontSize',14,'LineWidth',0.5);
% xlabel('Time(s)','FontName','Times New Roman','FontSize',18,'LineWidth',0.5,'interpreter','latex');
% ylabel('Evolving $\left\| W \right\|$','FontName','Times New Roman','FontSize',18,'LineWidth',0.5,'interpreter','latex');
% legend('SMRLS','VDFRLS','FFRLS','SGD','interpreter','latex','Location','northwest');
% axes('position',[0.18 0.67 0.1 0.08]);
% N5 = [N4; N3; N2; N1];
% plot(t,N5,'LineWidth',1);
% set(gca,'FontName','Times New Roman','FontSize',12,'LineWidth',0.5);

%%
%Fig. 5-14
% subplot('position',p1)
% plot(t,Yp,'LineWidth',1);
% set(gca,'FontName','Times New Roman','FontSize',14,'LineWidth',0.5);
% xlabel('Time(s)','FontName','Times New Roman','FontSize',18,'LineWidth',0.5,'interpreter','latex');
% ylabel('Approximation of $f_I(x)$','FontName','Times New Roman','FontSize',18,'LineWidth',0.5,'interpreter','latex');
% legend('SMRLS','VDFRLS','FFRLS','SGD','$f_I(x)$','interpreter','latex','Location','northeast');
% 
% subplot('position',p3)
% plot(t,Ep(1:3,:),'LineWidth',1);
% set(gca,'FontName','Times New Roman','FontSize',14,'LineWidth',0.5);
% xlabel('Time(s)','FontName','Times New Roman','FontSize',18,'LineWidth',0.5,'interpreter','latex');
% ylabel('Approximation Error $e_f$','FontName','Times New Roman','FontSize',18,'LineWidth',0.5,'interpreter','latex');
% legend('SMRLS','VDFRLS','FFRLS','interpreter','latex','Location','northeast');