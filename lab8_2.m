%%lab8_2
format compact
close all;
clear;
clc;

%%generate continuous time
t1=0;
t2=20;
t=t1:0.001:t2;

%%generate step input
[u,tu]=asignalstep(0,t1,t2);

%generate filter with lsim tf
b0=3;
bk=b0;
a0=1;
a1=5;
ak=[a0 a1];
sys=tf(bk,ak);
y=lsim(sys,u,tu);

figure();

subplot(2,1,1);
plot(tu,y);

%generate filter with lsim baxt
b0=3;
bk=b0;
a0=1;
a1=5;
ak=[a0 a1];
y=lsim(bk,ak,u,tu);

subplot(2,1,2);
plot(tu,y);