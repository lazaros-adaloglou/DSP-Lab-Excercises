%lab 1.1.9
format compact
close all;
clear;
clc;

[rex,imx,mx,fx,n]=signaliexp(pi/6,-50,50);

figure();

subplot(2,2,1);
stem(n,rex);

subplot(2,2,2);
stem(n,imx);

subplot(2,2,3);
stem(n,mx);

subplot(2,2,4);
stem(n,fx);

fundPer=(2*pi)/(pi/6);
fprintf('Fundamental Period N = ');
disp(fundPer);

[rex,imx,mx,fx,n]=signaliexp(pi*sqrt(2),-50,50);

figure();

subplot(2,2,1);
stem(n,rex);

subplot(2,2,2);
stem(n,imx);

subplot(2,2,3);
stem(n,mx);

subplot(2,2,4);
stem(n,fx);

fprintf('We observe from rex and imx that the signal is not periodic,');
fprintf(' \nwhich is logical because sqrt(2)*pi is not an explicit multiple of 2*pi');
