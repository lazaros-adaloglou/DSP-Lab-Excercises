%%lab10_2
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
[x2,nx2]=signalrexp(1/3,n1,n2);
[x3,nx3]=signalstep(0,n1,n2);
[x,nx]=signalmult(x2,nx2,x3,nx3);

%generate y from X(z)
bk=1;
ak=[1 -1/3];
y=filter(bk,ak,x1);

%plotting
figure();

subplot(2,1,1); 
plot(nx,x);

subplot(2,1,2); 
plot(nx,y);