%%lab6_4
format compact
close all;
clear;
clc;

t1=0;
t2=10;
t=t1:0.001:t2;
[x1,tx1]=asignalrexp(0.4,t1,t2);
[x2,tx2]=asignalrexp(0.5,t1,t2);
[x3,tx3]=asignalrexp(0.6,t1,t2);

[x12,tx12]=asignalconv(x1,tx1,x2,tx2);
[x13,tx13]=asignalconv(x1,tx1,x3,tx3);
[x23,tx23]=asignaladd(x2,tx2,x3,tx3);
[x,tx]=asignalconv(x1,tx1,x23,tx23);
[xepim,txepim]=asignaladd(x12,tx12,x13,tx13);

figure();
subplot(2,1,1);
plot(tx,x);
subplot(2,1,2);
plot(txepim,xepim);