%%lab10_11
format compact
close all;
clear;
clc;

%generate discrete time
n1=0;
n2=10;
n=n1:n2;

%generate impulse and step
[xd,nxd]=signalimp(0,n1,n2);
[x11,nx11]=signalrexp(1/8,n1,n2);
[xs1,nxs1]=signalstep(0,n1,n2);
[xs,nxs]=signalmult(x11,nx11,xs1,nxs1);

%generate filter
bk=1;
ak=[1 -3 4];
yd=filter(bk,ak,xd);

%generate initial conditions
IC=[2 1];
ic=filtic(bk,ak,IC);
ys=filter(bk,ak,xs,ic);

%plots
figure();

subplot(2,1,1);
stem(nxd,yd);
title("yd");

subplot(2,1,2);
stem(nxs,ys);
title("ys");