%%lab 1.2.7
format compact
close all;
clear;
clc;

t=0:0.001:10;
%rex=10*(eps.^(2*t))*cos(t)';
%imx=10*(eps.^(2*t))*sin(t)';
%mx=sqrt(rex.^2+imx.^2);
%fx=t;
%x=zeros(1,length(t));
%for i=1:length(t)
rex=10*exp(2*t).*cos(t);
imx=10*exp(2*t).*sin(t);
mx=sqrt(rex.^2+imx.^2);
fx=t;
%end
%plot(t,rex);
%axis([0 10 -10000000 10000000]);
subplot(2,2,1);
plot(t,rex);

subplot(2,2,2);
plot(t,imx);

subplot(2,2,3);
plot(t,mx);

subplot(2,2,4);
plot(t,fx);