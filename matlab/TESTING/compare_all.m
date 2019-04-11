%% Load data
NMPC=load('NMPC_sysH_K_T02_N5_noCONS.mat');
LBMPC=load('LBMPC_sysH_K_T02_N5_noCONS.mat');
LMPC=load('LMPC_sysH_K_T02_N5_noCONS.mat');

%% Plot
iterations=size(LMPC.sysHistory,2)-1;

figure;
subplot(5,1,1);
plot(0:iterations, NMPC.sysHistory(1,:),'Linewidth',1,'Color','r'); hold on;
plot(0:iterations,LBMPC.sysHistory(1,:),'Linewidth',1,'Color','g'); hold on;
plot(0:iterations,LMPC.sysHistory(1,:),'Linewidth',1,'Color','b'); 
grid on;
xlabel('iterations');
ylabel('x1');
title('mass flow');
legend({ 'NMPC', 'LBMPC', 'LMPC'},'Location','southeast')

subplot(5,1,2);
plot(0:iterations, NMPC.sysHistory(2,:),'Linewidth',1,'Color','r'); hold on;
plot(0:iterations,LBMPC.sysHistory(2,:),'Linewidth',1,'Color','g'); hold on;
plot(0:iterations,LMPC.sysHistory(2,:),'Linewidth',1,'Color','b'); 
grid on;
xlabel('iterations');
ylabel('x2');
title('pressure rise');
legend({ 'NMPC','LBMPC', 'LMPC'},'Location','southeast')

subplot(5,1,3);
plot(0:iterations, NMPC.sysHistory(3,:),'Linewidth',1,'Color','r'); hold on;
plot(0:iterations,LBMPC.sysHistory(3,:),'Linewidth',1,'Color','g'); hold on;
plot(0:iterations,LMPC.sysHistory(3,:),'Linewidth',1,'Color','b'); 
grid on;
xlabel('iterations');
ylabel('x3');
title('throttle');
legend({ 'NMPC', 'LBMPC','LMPC'},'Location','southeast')

subplot(5,1,4);
plot(0:iterations, NMPC.sysHistory(4,:),'Linewidth',1,'Color','r'); hold on;
plot(0:iterations,LBMPC.sysHistory(4,:),'Linewidth',1,'Color','g'); hold on;
plot(0:iterations,LMPC.sysHistory(4,:),'Linewidth',1,'Color','b'); 
grid on;
xlabel('iterations');
ylabel('x4');
title('throttle rate');
legend({ 'NMPC','LBMPC', 'LMPC'},'Location','southeast')

subplot(5,1,5);
plot(0:iterations, NMPC.sysHistory(5,:),'Linewidth',1,'Color','r'); hold on;
plot(0:iterations,LBMPC.sysHistory(5,:),'Linewidth',1,'Color','g'); hold on;
plot(0:iterations,LMPC.sysHistory(5,:),'Linewidth',1,'Color','b'); 
grid on;
xlabel('iterations');
ylabel('u');
title('Sys input');
legend({ 'NMPC','LBMPC', 'LMPC'},'Location','southeast')




figure;
plot(NMPC.sysHistory(1,:),NMPC.sysHistory(2,:),'Linewidth',1.5,'Marker','.','Color','r'); hold on;
plot(LBMPC.sysHistory(1,:),LBMPC.sysHistory(2,:),'Linewidth',1.5,'Marker','.','Color','g'); hold on;
plot(LMPC.sysHistory(1,:),LMPC.sysHistory(2,:),'Linewidth',1.5,'Marker','.','Color','b'); 

grid on
xlabel('x1');
ylabel('x2');
title('State space');
legend({'NMPC','LBMPC', 'LMPC'},'Location','southeast')