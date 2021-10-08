%%lab 1.2.6
format compact
close all;
clear;
clc;

t=0:0.001:10;
rex=cos(4*t);
imx=sin(4*t);
mx=sqrt(rex.^2+imx.^2);
fx=4*t;

subplot(2,2,1);
plot(t,rex);

subplot(2,2,2);
plot(t,imx);

subplot(2,2,3);
plot(t,mx);

subplot(2,2,4);
plot(t,fx);