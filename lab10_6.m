%%lab10_6
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

%partial fractions
bk=[0 1];
ak=[1 -3/4 1/8];
[R,p,C]=residuez(bk,ak);
disp(R);
disp(p);
disp(C);

%generate x(n)
[xs,nxs]=signalstep(0,n1,n2);
[x11,nx1]=signalrexp(1/2,n1,n2);
x1=4*x11;
[x22,nx2]=signalrexp(1/4,n1,n2);
x2=-4*x22;
[x1n,nx1n]=signalmult(x1,nx1,xs,nxs);
[x2n,nx2n]=signalmult(x2,nx2,xs,nxs);
[xn,nxn]=signaladd(x1n,nx1n,x2n,nx2n);

%y(n)=inverseztransform(X)
for i=1:length(R)
y(i,:)=filter(R(i),[1 -p(i)],xd);
end
ys=sum(y,1);

%plots
figure();

subplot(2,1,1);
stem(nxn,xn);
title("x");

subplot(2,1,2);
stem(nxd,ys);
title("y");