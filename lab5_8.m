%%lab5_8
format compact
close all;
clear;
clc;

%%a)
t1=0;
t2=10;
t=t1:0.001:t2;
t6=-10:0.001:-0.001;
x1=[exp(0.2*(t6)) exp(0.2*t)];


k=-10:0.001:10;
figure();
plot(k,x1);



