%%lab12_6
format compact
close all;
clear;
clc;

%generate laplaces
[R,P,K]=residue([1 5 0 -14],[2 0 -1])