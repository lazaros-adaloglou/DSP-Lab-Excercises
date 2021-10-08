%%lab4_9
format compact
close all;
clear;
clc;

%%plots trig(n) as d(n)
n1=0;
n2=20;
n=n1:n2;
a=1/3;
[x,nx]=signalrexp(a,n1,n2);
[x1,nx1]=signalstep(0,n1,n2);
[y,ny]=signalmult(x,nx,x1,nx1);
rx=(1/(1-a*a))*a.^(abs(n));
[y1,ny1]=signalfold(y,ny);
[xacconv,nacconv]=signalconv(y,ny,y1,ny1);
figure();
subplot(2,1,1);
stem(n,rx);
subplot(2,1,2);
stem(nacconv,xacconv);