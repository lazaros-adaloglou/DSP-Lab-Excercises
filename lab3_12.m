%%lab3_12
format compact
close all;
clear;
clc;

%%plots trig(n) as d(n)
n1=-5;
n2=5;
[x1,n11]=signalimp(2,n1,n2);
[x22,n22]=signalimp(1,n1,n2);
x2=2*x22;
[x33,n33]=signalimp(0,n1,n2);
x3=3*x33;
[x44,n44]=signalimp(-1,n1,n2);
x4=2*x44;
[x5,n55]=signalimp(-2,n1,n2);
x6=signaladd(x1,n11,x2,n22);
x7=signaladd(x3,n33,x4,n44);
x8=signaladd(x6,n44,x7,n55);
x9=signaladd(x8,n44,x5,n55);

figure();
subplot(2,1,1);
stem(n55,x9);
axis([(n55(1)-2) (n55(end)+2) (min(x9)-2) (max(x9)+2)]);
title("xd");

%%plots trig(n) as u(n)
n1=-5;
n2=5;
[x1,n11]=signalstep(-2,n1,n2);
[x2,n22]=signalstep(-1,n1,n2);
[x3,n33]=signalstep(0,n1,n2);
[x44,n44]=signalstep(+1,n1,n2);x4=-x44;
[x55,n55]=signalstep(+2,n1,n2);x5=-x55;
[x66,n66]=signalstep(+3,n1,n2);x6=-x66;

x7=signaladd(x1,n33,x2,n44);
x8=signaladd(x7,n44,x3,n55);
x9=signaladd(x8,n44,x4,n55);
x10=signaladd(x9,n44,x5,n55);
x11=signaladd(x10,n44,x6,n55);

subplot(2,1,2);
stem(n55,x11);
axis([(n55(1)-2) (n55(end)+2) (min(x11)-2) (max(x11)+2)]);
title("xu");