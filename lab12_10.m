%%lab12_10
format compact
close all;
clear;
clc;

%generate time
t1=0;
t2=20;
t=t1:0.001:t2;

%generate x
x=cos(t);

%coefficients
bk=[1 0 1];
ak=[1 0 2 1];

%generate H(s)
sys=tf(bk,ak);
lsim(sys,x,t);