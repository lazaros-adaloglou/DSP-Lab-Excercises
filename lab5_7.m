%%lab5_7
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
tx2=-8:0.001:2;
x2=0.5.^(2-tx2);

figure();
subplot(3,1,1);
plot(t,x1);

subplot(3,1,2);
plot(tx2,x2);


