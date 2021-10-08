%%lab7_8
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

%generate signal x
[x11,nx11]=signalrexp(1.04,n1,n2);
[x22,nx22]=signalsin(1/2,pi/3,0,n1,n2);
[x,nx]=signaladd(x11,nx11,x22,nx22);

%filtro Meshs timhs M=4
bk4=[1/4 1/4 1/4 1/4];
ak4=1;
y4=filter(bk4,ak4,x);

%filtro Meshs timhs M=8
bk8=[1/4 1/4 1/4 1/4 1/4 1/4 1/4 1/4];
ak8=1;
y8=filter(bk8,ak8,x);

%plots
figure();

subplot(3,1,1);
stem(n,y4);

subplot(3,1,2);
stem(n,y8);