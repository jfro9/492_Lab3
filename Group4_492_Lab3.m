% [t,D,P,R,H]=ReadIn3('TowPoint_331_BeamFr_1.75_Run47.csv');
% subplot(2,1,1);
% plot(t,D);
% Df=filterfilter(D,length(D),100,.75,3);
% subplot(2,1,2);
% plot(t,Df);
% ipt=findchangepts(Df,'MaxNumChanges',4);
% figure();
% 
[t25,D25,P25,R25,H25]=ReadIn3('TowPoint_331_BeamFr_2.50_Run38.csv');
Df25=filterfilter(D25,length(D25),100,.75,3);
subplot(2,1,1);
plot(t25,D25);
subplot(2,1,2);
plot(t25,Df25);
figure();

[t375,D375,P375,R375,H375]=ReadIn3('TowPoint_331_BeamFr_3.75_Run41.csv');
Df375=filterfilter(D375,length(D375),100,.75,3);
subplot(2,1,1);
plot(t375,D375);
subplot(2,1,2);
plot(t375,Df375);

figure();
[t4375,D4375,P4375,R4375,H4375]=ReadIn3('TowPoint_451_BeamFr_3.75_Run7.csv');
Df4375=filterfilter(D4375,length(D4375),100,.75,3);
subplot(2,1,1);
plot(t4375,D4375);
subplot(2,1,2);
plot(t4375,Df4375);


% NOTE: Attempting to come up with changepts function, however isseu occurs
% where the change we are looking for is not great enough to trigger it due
% to other changes occuring. Steady state examples can be seen above for
% 2.5 and 3.75 at 20-~30 and 2-~22.5 respectively.