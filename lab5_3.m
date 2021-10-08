%%lab5_3
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
x2=10*x1;

figure();
subplot(2,1,1);
plot(t,x1);

subplot(2,1,2);
plot(t,x2);
