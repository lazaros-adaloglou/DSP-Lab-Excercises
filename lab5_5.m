%%lab5_5
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
x2=fliplr(x1);

figure();
subplot(3,1,1);
plot(t,x1);

subplot(3,1,2);
plot(-fliplr(t),x2);


