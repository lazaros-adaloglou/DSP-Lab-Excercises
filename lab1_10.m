%lab 1.1.10
format compact
close all;
clear;
clc;

[x,n]=signalsin(1,pi/4,pi/2,-50,50);

figure();

stem(n,x);

fundPer=(2*pi)/(pi/4);
fprintf('Fundamental Period N = ');
disp(fundPer);

[x,n]=signalsin(1,1/4,pi/2,-50,50);

figure();

stem(n,x);

fprintf('We observe from the diagram that the signal is not periodic,');
fprintf(' \nwhich is logical because 1/4 is not an explicit multiple of 2*pi\n');