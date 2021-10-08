%%lab4_4
format compact
close all;
clear;
clc;

%%plots trig(n) as d(n)
n1=0;
n2=10;
n12=n1:n2;
n3=0;
n4=20;
n34=n3:n4;

x1=n12;
x2=n34+2;

[y1,ny1]=signalconv(x1,n12,x2,n34);

[y2,ny2]=signalconv(x2,n34,x1,n12);

subplot(2,1,1);
stem(ny1,y1);

subplot(2,1,2);
stem(ny2,y2);