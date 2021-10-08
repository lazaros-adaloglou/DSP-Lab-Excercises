%%lab6_1
format compact
close all;
clear;
clc;

t1=0;
t2=10;
t=t1:0.001:t2;
[x1,tx1]=asignalcos(1,1,pi/2,t1,t2);
[x2,tx2]=asignalsin(1,2,pi/4,t1,t2);

[x,tx]=asignalconv(x1,tx1,x2,tx2);

figure();
plot(tx,x);