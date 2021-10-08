%%lab10_3
format compact
close all;
clear;
clc;

%generate discrete time
n1=0;
n2=3;
n=n1:n2;

%generate x
[xz,nxz]=signalimp(0,n1,n2+n2);
[x00,nx00]=signalimp(0,n1,n2);
[x11,nx11]=signalimp(1,n1,n2);
[x22,nx22]=signalimp(2,n1,n2);
[x33,nx33]=signalimp(3,n1,n2);

%x1
[x1dot,nx1dot]=signaladd(x00,nx00,2*x11,nx11);
[x1,nx1]=signaladd(x1dot,nx1dot,3*x22,nx22);

%x2
[x2dot0,nx2dot0]=signaladd(2*x00,nx00,3*x11,nx11);
[x2dot1,nx2dot1]=signaladd(4*x22,nx22,5*x33,nx33);
[x2,nx2]=signaladd(x2dot0,nx2dot0,x2dot1,nx2dot1);

%x=conv(x1,x2)
[x,nx]=signalconv(x1,nx1,x2,nx2);

%generate y1 from X(z)
bk=[2 7 16 22 22 15];
ak=1;
y1=filter(bk,ak,xz);

%plotting
figure();

subplot(3,1,1); 
stem(nx,x);

subplot(3,1,2); 
stem(nx,y1);

%deconv
y2=deconv(x,x1);

subplot(3,1,3); 
stem(nx2,y2);