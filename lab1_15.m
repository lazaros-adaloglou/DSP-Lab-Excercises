%lab 1.1.15
format compact
close all;
clear;
clc;

%[x,n]=signalcos(1,pi/2,0,0,10);
%n1=-50;
%n2=50;
%n=n1:n2;
%x1=signalstep(0,n1,n2);
%x2=signalstep(30,n1,n2);
%x=x1-x2;
n=[0 1 2 3 4 5 6];
x=[5 3 1 1 1 3 5];
s = signalspecialsymmetric(x,n);

if s==1
    disp('I');
elseif s==2
    disp('II');
elseif s==3
    disp('III');
elseif s==4
    disp('IV');
elseif s==0
    disp('0');
end