%%lab5_1
format compact
close all;
clear;
clc;

%%a)
t1=0;
t2=10;
t=t1:0.001:t2;
x1=0.5.^(2*t)+0.5.^(-2*t);

%%b)
t3=0;
t4=4*pi;
t5=t3:0.001:t4;
x2=cos(t5)+sin(t5+pi/2);

figure();
subplot(2,1,1);
plot(t,x1);

subplot(2,1,2);
plot(t5,x2);
