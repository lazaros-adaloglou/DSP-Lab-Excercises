%%lab11_2
format compact
close all;
clear;
clc;

%generate fouriers
syms x1 x2 t;
x1=fourier(cos(t));
x2=ifourier(x1);

pretty(x1);
pretty(x2);