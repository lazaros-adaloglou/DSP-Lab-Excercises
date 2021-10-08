%%lab8_3
format compact
close all;
clear;
clc;

%%generate continuous time
t1=0;
t2=20;
t=t1:0.001:t2;

%%generate impulse input
[d,td]=asignalimp(0,t1,t2);

%%generate shifted step input
[u,tu]=asignalstep(1,t1,t2);

%generate filter d response
b0=1;
bk=b0;
a0=1;
a1=4;
ak=[a0 a1];
sysd=tf(bk,ak);
yd=lsim(sysd,d,td);

figure();

subplot(2,1,1);
plot(td,yd);

%generate filter u(t-1) response
b0=1;
bk=b0;
a0=1;
a1=4;
ak=[a0 a1];
sysu=tf(bk,ak);
yu=lsim(sysu,u,tu);

subplot(2,1,2);
plot(tu,yu);