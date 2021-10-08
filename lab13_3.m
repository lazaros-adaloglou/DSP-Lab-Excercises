%%lab13_3
format compact
close all;
clear;
clc;

%generate discrete time
n1=0;
n2=3;
n=n1:n2;
N=n2+1;

%generate x
[xd,nxd]=signalimp(0,n1,n2);
[xd11,nxd1]=signalimp(1,n1,n2);
xd1=2*xd11;
[xd22,nxd2]=signalimp(2,n1,n2);
xd2=3*xd22;
[xd33,nxd3]=signalimp(3,n1,n2);
xd3=4*xd33;

[x01,nx01]=signaladd(xd,nxd,xd1,nxd1);
[x23,nx23]=signaladd(xd2,nxd2,xd3,nxd3);

[x,nx]=signaladd(x01,nx01,x23,nx23);

%generate xi
x1=signalcirshift(x,1,N);
x2=signalcirshift(x,2,N);
x3=signalcirshift(x,3,N);
x4=signalcirshift(x,4,N);

%display
disp(x);
disp(x1);
disp(x2);
disp(x3);
disp(x4);