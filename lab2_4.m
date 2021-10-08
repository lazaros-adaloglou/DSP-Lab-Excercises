%%lab 1.2.4

format compact
close all;
clear;
clc;

t=0:0.001:4*pi;
x1=sin(t);
x2=sin(t+pi/4);

plot(t,x1,t,x2);
