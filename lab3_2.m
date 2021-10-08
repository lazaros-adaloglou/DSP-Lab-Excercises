%%lab3_2
format compact
close all;
clear;
clc;

%%plots
n1=-15;
n2=15;
w1=pi/4;
w2=pi/3;
[x1,nx1]=signalsin(1,w1,0.1,n1,n2);
T1=2*pi/w1;
disp("T1=");
disp(T1);
[x2,nx2]=signalcos(2,w2,0.2,n1,n2);
T2=2*pi/w2;
disp("T2=");
disp(T2);
[x,n]=signaladd(x1,nx1,x2,nx2);
Tekp=lcm(T1,T2);
disp("LCM(T1,T2)=");
disp(Tekp);
T=signalperiodic(x,n);
disp("T=");
disp(T);

figure();
subplot(3,1,1);
stem(nx1,x1);
axis([(nx1(1)-2) (nx1(end)+2) (min(x1)-2) (max(x1)+2)]);
title("x1");

subplot(3,1,2);
stem(nx2,x2);
axis([(nx2(1)-2) (nx2(end)+2) (min(x2)-2) (max(x2)+2)]);
title("x2");

subplot(3,1,3);
stem(n,x);
axis([(n(1)-2) (n(end)+2) (min(x)-2) (max(x)+2)]);
title("x=x1+x2");