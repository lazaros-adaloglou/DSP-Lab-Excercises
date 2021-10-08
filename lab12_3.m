%%lab12_3
format compact
close all;
clear;
clc;

%generate laplaces
[R,P,K]=residue(1,[1 -7 12])