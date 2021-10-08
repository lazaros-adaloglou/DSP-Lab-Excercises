%%lab8_1_1
format compact
close all;
clear;
clc;

%%generate and solve differential equation
syms y(t) 
eqn1 = diff(y,t)-y(t) == sin(t);
cond1=y(pi/2)==0;
S1 = dsolve(eqn1,cond1);
pretty(S1);

eqn2 = diff(y,t,3)-diff(y,t) == sin(t);
Dy=diff(y,t);
D2y=diff(y,t,2);
cond2=[y(0)==0 Dy(0)==1 D2y(0)==0];
S2 = dsolve(eqn2,cond2);
pretty(S2);
