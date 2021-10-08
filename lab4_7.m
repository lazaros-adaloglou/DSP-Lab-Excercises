%%lab4_7
format compact
close all;
clear;
clc;

%%plots trig(n) as d(n)
n1=0;
n2=10;
n3=0;
n4=20;
n12=n1:n2;
n34=n3:n4;
x=n12;
y=n34+2;
[xac,nac]=xcorr(x,y);
[y1,ny1]=signalfold(y,n34);
[xacconv,nacconv]=signalconv(x,n12,y1,ny1);
figure();
subplot(2,1,1);
stem(nac,xac);
subplot(2,1,2);
stem(nacconv,xacconv);