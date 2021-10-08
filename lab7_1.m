%%lab7_1
format compact
close all;
clear;
clc;

M=2;
disp("M=");
disp(M);
disp("So, Filter Grade=");
disp(M);
disp("The constant coefficients are:");
b0=1;
b1=-1;
b2=-1;
bk=[b0 b1 b2];
disp(bk);
n1=0;
n2=10;
n=n1:n2;
[xh,nxh]=signalimp(0,n1,n2);
[xs,nxs]=signalstep(0,n1,n2);
y1=n;
[y2,ny2]=signalstep(0,n1,n2);
[y,ny]=signalmult(y1,n,y2,ny2);
h=filter(bk,1,xh);
s=filter(bk,1,xs);
y=filter(bk,1,y);

figure();
subplot(3,1,1);
stem(n,h);

subplot(3,1,2);
stem(n,s);

subplot(3,1,3);
stem(n,y);