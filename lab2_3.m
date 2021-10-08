%%lab 1.2.3

format compact
close all;
clear;
clc;

t=0:0.001:8*pi;
x1=sin(t+pi/4);
x2=sin(2*t+pi/4);

plot(t,x1,t,x2);
