%lab 1.1.11
format compact
close all;
clear;
clc;

[x,n]=signalsin(2,pi/6,0,-100,100);
N=signalperiodic(x,n);
disp(N);