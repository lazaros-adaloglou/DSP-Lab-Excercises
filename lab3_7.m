%%lab3_7
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

[xn1,nxn1]=signalshift(xn,nx3,4);

subplot(3,1,2);
stem(nxn1,xn1);
axis([(nxn1(1)-2) (nxn1(end)+2) (min(xn1)-2) (max(xn1)+2)]);
title("xn1");

[xn2,nxn2]=signalshift(xn,nx3,-6);

subplot(3,1,3);
stem(nxn2,xn2);
axis([(nxn2(1)-2) (nxn2(end)+2) (min(xn2)-2) (max(xn2)+2)]);
title("xn2");