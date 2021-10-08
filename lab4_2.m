%%lab4_2
format compact
close all;
clear;
clc;

%%plots trig(n) as d(n)
n1=1;
n2=3;
n=n1:n2;

for i=1:length(n)
x11(i)=n(i)+6;
end

x1=x11'

for i=1:length(n)
x2(i)=n(i);
end

P=[[x2 0 0]' [0 x2 0]' [0 0 x2]']

x=P*x1

nx=n1+n1:n2+n2;

stem(nx,x);