%%lab6_2
format compact
close all;
clear;
clc;

t1=0;
t2=10;
t=t1:0.001:t2;
[x1,tx1]=asignalrexp(0.4,t1,t2);
[x2,tx2]=asignalrexp(0.6,t1,t2);

[x,tx]=asignalconv(x1,tx1,x2,tx2);
[xant,txant]=asignalconv(x2,tx2,x1,tx1);
figure();
subplot(2,1,1);
plot(tx,x);
subplot(2,1,2);
plot(txant,xant);