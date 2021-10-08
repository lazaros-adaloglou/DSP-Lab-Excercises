%lab 1.1.14
format compact
close all;
clear;
clc;

%[x,n]=signalcos(1,pi/2,0,-10,10);
n1=-50;
n2=50;
n=n1:n2;
x1=signalstep(0,n1,n2);
x2=signalstep(30,n1,n2);
x=x1-x2;
s = signalsymmetric(x,n);

if s==1
    disp('even');
elseif s==2
    disp('odd');
elseif s==0
    disp('assymetric');
end