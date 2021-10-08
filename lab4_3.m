%%lab4_3
format compact
close all;
clear;
clc;

n1=0;
n2=10;
[x1,nx1]=signalrexp(1/2,n1,n2);
[x2,nx2]=signalstep(0,n1,n2);
[x33,nx3]=signalstep(10,n1,n2);
x3=-x33;
[x4,nx4]=signaladd(x2,nx2,x3,nx3);
[x5,nx5]=signalmult(x1,nx1,x4,nx4);

figure();
subplot(2,1,1);
stem(nx5,x5);

[x6,nx6]=signalimp(0,0,0);
[y,ny]=signalconv(x5,nx5,x6,nx6);

subplot(2,1,2);
stem(ny,y);