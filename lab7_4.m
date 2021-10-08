%%lab7_4
format compact
close all;
clear;
clc;

b0=1;
b1=2;
bk=[b0 b1];
a0=1;
a1=-1;
a2=1;
ak=[a0 a1 a2];

n1=0;
n2=10;
n=n1:n2;
[xh,nxh]=signalimp(0,n1,n2);
[xs,nxs]=signalstep(2,n1,n2);
h=filter(bk,ak,xh);
s=filter(bk,ak,xs);
[y,ny]=signalconv(h,n,xs,nxs);

figure();
subplot(3,1,1);
stem(n,h);

subplot(3,1,2);
stem(n,s);

subplot(3,1,3);
stem(ny,y);