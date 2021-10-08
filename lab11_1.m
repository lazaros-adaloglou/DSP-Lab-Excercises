%%lab11_1
format compact
close all;
clear;
clc;

%generate fouriers
syms x1 x2 x3 x4 t;
x1=fourier(exp(-t*t));
x2=fourier(exp(-(-t)*(-t)));
x3=fourier(exp(-(t-1)*(t-1)));
x4=fourier(exp(-2*t*2*t));

pretty(x1);
pretty(x2);
pretty(x3);
pretty(x4);