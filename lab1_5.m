%lab 1.1.5
format compact
close all;
clear;
clc;

[rex,imx,mx,fx,n]=signaliexp(pi/2,-50,50);

subplot(2,2,1);
stem(n,rex);

subplot(2,2,2);
stem(n,imx);

subplot(2,2,3);
stem(n,mx);

subplot(2,2,4);
stem(n,fx);