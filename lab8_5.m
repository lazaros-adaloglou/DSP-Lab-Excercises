%%lab8_5
format compact
close all;
clear;
clc;

%generate iput
t1=0;
t2=20;
[x,tx]=asignalstep(10,t1,t2);

%generate filter
y=lsim(1,[5 0],x,tx);
plot(tx,y);

