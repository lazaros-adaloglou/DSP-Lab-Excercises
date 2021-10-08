%%lab8_4
format compact
close all;
clear;
clc;

%%generate continuous time
t1=0;
t2=20;
t=t1:0.001:t2;

%%generate shifted step input
[u,tu]=asignalstep(2,t1,t2);

%generate filter u(t-2) response
b0=1;
b1=2;
bk=[b0 b1];
a0=1;
a1=0;
a2=5;
ak=[a0 a1 a2];
sysu=tf(bk,ak);
yu=lsim(sysu,u,tu);

figure();

plot(tu,yu);