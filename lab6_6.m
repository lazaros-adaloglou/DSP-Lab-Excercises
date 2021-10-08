%%lab6_6
format compact
close all;
clear;
clc;

t1=-1;
t2=-0.001;
t=t1:0.001:t2;
x1=4*(t+1);
t3=0;
t4=4;
t34=t3:0.001:t4;
x2=4-t34;
x=[x1 x2];

[rx,trx]=xcorr(x);
trx=trx/1000-1;
figure();
plot(trx,rx);