%%lab5_4
format compact
close all;
clear;
clc;

%%a)
t1=0;
t2=10;
t=t1:0.001:t2;
x1=(0.5.^(t));

%%b)
x2=(0.5.^(t-2));
x3=(0.5.^(t+2));

figure();
subplot(3,1,1);
plot(t,x1);

subplot(3,1,2);
plot(t-2,x2);

subplot(3,1,3);
plot(t+2,x3);
