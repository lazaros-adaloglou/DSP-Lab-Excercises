%%lab13_8
format compact
close all;
clear;
clc;

%generate discrete time
n1=0;
n2=3;
n=n1:n2;
N=n2+1;
n0=1;
k=n1:n2;

%generate xi
x1=[1 2 3 4];
x2=[5 6 7 8];

%generate conv=yl
[yl,nyl]=signalconv(x1,n,x2,n);

%generate yl(n+4)
[yls,nyls]=signalshift(yl,nyl,-4);

%generate yl+yl(n+4)
[ya,nya]=signaladd(yl,nyl,yls,nyls);

%generate signalcirconv
yc=signalcirconv(x1,x2,N);

%display
stem(n,yc);
figure();
stem(nya,ya);