%%lab10_1
format compact
close all;
clear;
clc;

%generate discrete time
n1=0;
n2=3;
n=n1:n2;

%generate x
[x1,nx1]=signalimp(0,n1,n2);
[x22,nx2]=signalimp(1,n1,n2);
x2=8*x22;
[x33,nx3]=signalimp(3,n1,n2);
x3=9*x33;
[x12,nx12]=signaladd(x1,nx1,x2,nx2);
[x,nx]=signaladd(x12,nx12,x3,nx3);

%generate y from X(z)
bk=[1 8 0 9];
ak=1;
y=filter(bk,ak,x1);

%plotting
figure();

subplot(2,1,1); 
plot(nx,x);

subplot(2,1,2); 
plot(nx,y);