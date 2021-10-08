%%lab7_6
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

%1o filtro
b01=1;
bk1=b01;
a01=1;
a11=1/2;
ak1=[a01 a11];

%2o filtro
b02=1;
bk2=b02;
a02=1;
a12=1/3;
ak2=[a02 a12];

%h1
h1=filter(bk1,ak1,xd);
figure();
subplot(3,1,1);
stem(n,h1);

%h2
h2=filter(bk2,ak2,xd);
subplot(3,1,2);
stem(n,h2);

%generate step u(n)
[xs,nxs]=signalstep(2,n1,n2);

%step response of total filter
[h,nh]=signaladd(h1,n,h2,n);
[y,ny]=signalconv(h,nh,xs,nxs);
subplot(3,1,3);
stem(ny,y);