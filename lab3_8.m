%%lab3_8
format compact
close all;
clear;
clc;

%%plots
n1=-3;
n2=3;
[x11,nx1]=signalimp(-2,n1,n2);
x1=3*x11;
[x22,nx2]=signalimp(-1,n1,n2);
x2=4*x22;
[x3,nx3]=signalimp(0,n1,n2);
[x44,nx4]=signalimp(1,n1,n2);
x4=5*x44;
[x55,nx5]=signalimp(2,n1,n2);
x5=8*x55;
xna=signaladd(x1,nx1,x2,nx2);
xnb=signaladd(x3,nx3,x4,nx4);
xnc=signaladd(xna,nx3,xnb,nx4);
xn=signaladd(xnc,nx3,x5,nx5);

figure();
subplot(3,1,1);
stem(nx1,xn);
axis([(nx1(1)-2) (nx1(end)+2) (min(xn)-2) (max(xn)+2)]);
title("xn");

[y,n]=signalfold(xn,nx3);

subplot(3,1,2);
stem(n,y);
axis([(n(1)-2) (n(end)+2) (min(y)-2) (max(y)+2)]);
title("y");