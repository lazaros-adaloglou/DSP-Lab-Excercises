%%lab12_5
format compact
close all;
clear;
clc;

%generate laplaces
[R,P,K]=residue([1 1],[-2 -1 1])