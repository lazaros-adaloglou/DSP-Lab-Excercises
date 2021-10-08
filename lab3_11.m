%%lab3_11
format compact
close all;
clear;
clc;

%%plots
n1=-7;
n2=7;
[x1,n11]=signalstep(-4,n1,n2);
[y2,n22]=signalstep(5,n1,n2);
x2=-y2;
x=signaladd(x1,n11,x2,n22);

figure();
stem(n22,x);
axis([(n22(1)-2) (n22(end)+2) (min(x)-2) (max(x)+2)]);
title("x");