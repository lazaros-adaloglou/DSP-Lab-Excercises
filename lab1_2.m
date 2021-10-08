%lab 1.1.2
format compact
close all;
clear;
clc;

[x1,nx1]=signalimp(0,-5,5);
[x2,nx2]=signalimp(10,5,15);
[x3,nx3]=signalimp(-1,-6,4);

figure();

subplot(3,1,1);
stem(nx1,x1);

subplot(3,1,2);
stem(nx2,x2);

subplot(3,1,3);
stem(nx3,x3);
