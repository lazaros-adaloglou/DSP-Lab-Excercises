%%lab5_2
format compact
close all;
clear;
clc;

%%a)
t1=-10;
t2=10;
t=t1:0.001:t2;
x1=(0.5.^(2*t)).*cos(t);

%%b)
t3=0;
t4=10;
t5=t3:0.001:t4;
x2=exp(1i*pi.*t5/2).*exp(1i*pi.*t5/4);

figure();
subplot(2,1,1);
plot(t,x1);

subplot(2,1,2);
plot(t5,x2);
