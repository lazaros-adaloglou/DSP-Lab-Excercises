%%lab12_4
format compact
close all;
clear;
clc;

%generate laplaces
[R,P,K]=residue(1,[1 -3 0 4])