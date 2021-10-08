%lab 1.1.12
format compact
close all;
clear;
clc;

n1=-50;
n2=50;
n=n1:n2;
x1=signalstep(0,n1,n2);
x2=signalstep(30,n1,n2);
x=x1-x2;
[xe,xo,m]=signalevenodd(x,n);

subplot(2,2,1);
stem(m,xe);

subplot(2,2,2);
stem(m,xo);

subplot(2,2,3);
stem(m,x);

subplot(2,2,4);
y=xe+xo;
stem(m,y);