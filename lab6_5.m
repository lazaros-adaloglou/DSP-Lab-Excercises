%%lab6_5
format compact
close all;
clear;
clc;

t1=0;
t2=10;
t=t1:0.001:t2;
[x1,tx1]=asignalcos(1,1,pi/2,t1,t2);
[x2,tx2]=asignalsin(1,1,pi/2,t1,t2);

[rxy,trxy]=xcorr(x1,x2);
[ryx,tryx]=xcorr(x2,x1);

figure();
subplot(2,1,1);
plot(trxy,rxy);
subplot(2,1,2);
plot(tryx,ryx);