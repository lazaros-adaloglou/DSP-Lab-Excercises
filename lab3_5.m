%%lab3_5
format compact
close all;
clear;
clc;

%%plots
n1=0;
n2=10;
[x1,n]=signalrexp(0.3,n1,n2);
x2=signalmult(4,n,x1,n);

figure();
subplot(2,1,1);
stem(n,x1);
axis([(n(1)-2) (n(end)+2) (min(x1)-2) (max(x1)+2)]);
title("x1");

subplot(2,1,2);
stem(n,x2);
axis([(n(1)-2) (n(end)+2) (min(x2)-2) (max(x2)+2)]);
title("4*x1");

