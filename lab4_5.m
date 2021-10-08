%%lab4_5
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

[y12,ny12]=signalconv(x1,n12,x2,n34);

[y23,ny23]=signalconv(x2,n34,x3,n56);

[y1and23,ny1and23]=signalconv(x1,n12,y23,ny23);
[y12and3,ny12and3]=signalconv(y12,ny12,x3,n56);

subplot(2,1,1);
stem(ny1and23,y1and23);

subplot(2,1,2);
stem(ny12and3,y12and3);