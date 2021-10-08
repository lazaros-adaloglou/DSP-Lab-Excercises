%lab 1.1.16
format compact
close all;
clear;
clc;

n1=-10;
n2=10;
n=n1:n2;
x=0;
[p,s]=signalspersym(x,n);

if p>0
      if s==1
          disp('periodic even');
      elseif s==2
          disp('periodic odd');
      else
          disp('periodic assymetric');
      end
else
    disp('aperiodic');
end