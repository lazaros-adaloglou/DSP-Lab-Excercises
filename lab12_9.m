%%lab12_9
format compact
close all;
clear;
clc;

%generate time
t1=0;
t2=20;
t=t1:0.001:t2;

%generate x
x=sin(t);

%coefficients
bk=[1 2];
ak=[1 0 5];

%generate H(s)
sys=tf(bk,ak);
lsim(sys,x,t);