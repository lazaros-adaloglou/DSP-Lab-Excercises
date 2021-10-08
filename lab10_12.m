%%lab10_12
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
[xs,nxs]=signalstep(0,n1,n2);

%generate filter
bk=2;
ak=[1 -1/2];
yd=filter(bk,ak,xd);

%zplane
zplane(bk,ak);
disp("eystathes, afou oi poloi briskontai mesa ston monadiaio");

%generate initial conditions
IC=2;
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