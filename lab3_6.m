%%lab3_6
format compact
close all;
clear;
clc;

%%plots
n1=0;
n2=20;
[x1,nx1]=signalrexp(0.2,n1,n2);
[x2,nx2]=signalrexp(0.3,n1,n2);
[x3,nx3]=signaladd(x1,nx1,x2,nx2);
x4=signalmult(5,nx1,x3,nx3);
[x5,nx5]=signalstep(0,n1,n2);
[x6,nx6]=signalstep(20,n1,n2);
[x7,nx7]=signaladd(x5,nx5,x6,nx6);
x=signalmult(x4,nx1,x7,nx7);

figure();
stem(nx1,x);
axis([(nx1(1)-2) (nx1(end)+2) (min(x)-2) (max(x)+2)]);
title("x");

