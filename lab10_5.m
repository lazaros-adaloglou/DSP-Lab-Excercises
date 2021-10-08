%%lab10_5
format compact
close all;
clear;
clc;

%generate discrete time
n1=0;
n2=10;
n=n1:n2;

%generate impulse
[xd,nxd]=signalimp(0,n1,n2);

%generate x form X(z) (Inverse z Transform)
bk=1;
ak=[1 -3/4];
x=filter(bk,ak,xd);

%generate y form Y(z)=z^-1*X(z)
bky=[0 1];
aky=[1 -3/4];
y=filter(bky,aky,xd);

%generate x(n-1)
[xn,nxn]=signalshift(x,nxd,1);

%plots
figure();

subplot(3,1,1);
stem(nxd,x);
title("x");

subplot(3,1,2);
stem(nxn,xn);
title("x(n-1)");

subplot(3,1,3);
stem(nxd,y);
title("y");