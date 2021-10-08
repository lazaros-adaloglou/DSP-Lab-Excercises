%%lab12_2
format compact
close all;
clear;
clc;

%generate laplaces
syms x1 x2 t;
x1=laplace(3*t*t+sin(t));
x2=ilaplace(x1);

pretty(x1);
pretty(x2);