%%lab13_7
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

%generate signalconv
[x4,nx4]=signalconv(x1,n,x2,n);

%generate signalcirconv
x5=signalcirconv(x1,x2,7);

%generate cconv
x6=cconv(x1,x2,7);

%display
disp(x4);
disp(x5);
disp(x6);