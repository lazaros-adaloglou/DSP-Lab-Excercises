%%lab4_6
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
n5=0;
n6=30;
n56=n5:n6;

x1=n12;
x2=n34+2;
x3=n56+3;

[y23,ny23]=signaladd(x2,n34,x3,n56);
[y1and23,ny1and23]=signalconv(x1,n12,y23,ny23);

[yc12,nyc12]=signalconv(x1,n12,x2,n34);
[yc13,nyc13]=signalconv(x1,n12,x3,n56);
[yepim,nyepim]=signaladd(yc12,nyc12,yc13,nyc13);

subplot(2,1,1);
stem(ny1and23,y1and23);

subplot(2,1,2);
stem(nyepim,yepim);