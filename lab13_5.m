%%lab13_5
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
x1=[1 2 3];
x2=[4 5 6 7];

%generate signalcirconv
c=signalcirconv(x1,x2,N);

%generate cconv
cc=cconv(x1,x2,N);

%display
disp(c);
disp(cc);