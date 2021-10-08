%%lab3_14
format compact
close all;
clear;
clc;

%%plots trig(n) as d(n)
n1=-5;
n2=-1;
n3=0;
n4=5;
n12=n1:n2;
n34=n3:n4;
n=n1:n4;

for i=1:length(n12)
x(i)=n12(i)-3;
end

for i=length(n12)+1:length(n12)+length(n34)
x(i)=n34(i-length(n12))+3;
end

[x11,nx1]=signalshift(x,n,2);
x1=4*x11;
[x22,nx2]=signalshift(x,n,-5);
x2=-3*x22;

[y,ny]=signaladd(x1,nx1,x2,nx2);

figure();
subplot(2,1,1);
stem(n,x);
axis([(n(1)-2) (n(end)+2) (min(x)-2) (max(x)+2)]);
title("x");

subplot(2,1,2);
stem(ny,y);
axis([(ny(1)-2) (ny(end)+2) (min(y)-2) (max(y)+2)]);
title("y");