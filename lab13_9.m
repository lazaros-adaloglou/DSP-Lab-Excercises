%%lab13_9
format compact
close all;
clear;
clc;

%generate discrete time
n1=0;
n2=3;
n=n1:n2;
N=length(n);
k=n1:n2;

%generate x
x=[1 0 0 2];

%generate fft(x)
Xk1=fft(x,N);

%generate signaldft(x)
Xk2=signaldft(x,N);

%display
figure();

subplot(3,1,1);
stem(n,x);

subplot(3,1,2);
stem(k,Xk1);

subplot(3,1,3);
stem(k,Xk2);