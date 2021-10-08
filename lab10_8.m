%%lab10_8
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
bk=[1 0 1];
ak=[1 -1 -2];
[R,p,C]=residuez(bk,ak);
disp(R);
disp(p);
disp(C);

%y(n)=inverseztransform(X)
for i=1:length(R)
y(i,:)=filter(R(i),[1 -p(i)],xd);
end
ys=sum(y,1)+C;

%plots
figure();

stem(nxd,ys);
title("y");