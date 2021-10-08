%%lab12_1
format compact
close all;
clear;
clc;

%generate laplaces
syms x1 x2 x3 x4 x5 x6 t;
x1=laplace(t*t);
x2=laplace(t-1);
x3=laplace(exp(t));
x4=laplace(exp(2*t));
x5=laplace(cos(2*t));
x6=laplace(3*t*t*cos(2*t));

pretty(x1);
pretty(x2);
pretty(x3);
pretty(x4);
pretty(x5);
pretty(x6);