%%lab4_8
format compact
close all;
clear;
clc;

%%plots trig(n) as d(n)
n1=0;
n2=10;
n=n1:n2;
x=n;
[xac,nac]=xcorr(x);
[y,ny]=signalfold(x,n);
[xacconv,nacconv]=signalconv(x,n,y,ny);
figure();
subplot(2,1,1);
stem(nacconv,xac);
subplot(2,1,2);
stem(nac,xacconv);