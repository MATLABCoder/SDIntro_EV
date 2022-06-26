tic
disp('fast Restart On')
sim('CH9_1_firstEV_00');
toc
%%
t = [0 10 20 30];
xdot = [0 100/3.6 100/3.6 100/3.6]; % m/s
myCycleS.time = t';
myCycleS.signals.values = xdot';
plot(t,xdot*3.6);
xlabel('Time (s)');
ylabel('Vehicle Spd (km/hr)')