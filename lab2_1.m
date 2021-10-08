%%lab 1.2.1

format compact
close all;
clear;
clc;

t=0:0.001:10;
x=t.^3+2*t.^2+t-1;

plot(t,x);
