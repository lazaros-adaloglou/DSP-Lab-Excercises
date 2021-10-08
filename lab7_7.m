%%lab7_7
format compact
close all;
clear;
clc;

%generate discrete time
n1=0;
n2=10;
n=n1:n2;

%produce impulse d(n)
[xd,nxd]=signalimp(0,n1,n2);

%generate step u(n)
[xs,nxs]=signalstep(0,n1,n2);

%generate step u(n-2)
[xs2,nxs2]=signalshift(xs,nxs,2);

%filtro
b0=1;
b1=-2;
bk=[b0 b1];
a0=1;
a1=-3;
a2=4;
ak=[a0 a1 a2];

%s
h=filter(bk,ak,xd);
sf=filter(bk,ak,xs);
[s,ns]=signalconv(h,n,xs,nxs);

%plots
figure();

subplot(3,1,1);
stem(n,sf);

subplot(3,1,2);
stem(ns,s);

%step response of shifted step input
[s2,ns2]=signalconv(h,n,xs2,nxs2);
subplot(3,1,3);
stem(ns2,s2);