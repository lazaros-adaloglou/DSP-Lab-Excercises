%%lab3_13
format compact
close all;
clear;
clc;

%%plots trig(n) as d(n)
n1=-5;
n2=5;
n=n1:n2;
x=n+6;
[x11,n11]=signalfold(x,n);
[x1,n1]=signalshift(x11,n11,-3);
[x2,n2]=signalshift(x11,n11,3);

figure();
subplot(3,1,1);
stem(n,x);
axis([(n(1)-2) (n(end)+2) (min(x)-2) (max(x)+2)]);
title("x");

subplot(3,1,2);
stem(n1,x1);
axis([(n1(1)-2) (n1(end)+2) (min(x1)-2) (max(x1)+2)]);
title("x1");

subplot(3,1,3);
stem(n2,x2);
axis([(n2(1)-2) (n2(end)+2) (min(x2)-2) (max(x2)+2)]);
title("x2");