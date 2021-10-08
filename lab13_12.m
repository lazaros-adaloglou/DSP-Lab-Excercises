%%lab13_12
format compact
close all;
clear;
clc;

%generate discrete time
n1=0;
n2=15;
n=n1:n2;
N=length(n);
M=7;
k=n1:M-1;

%generate h
h=ones(1,M);

%generate fft(h)
Xk=fft(h,M);
Rexk=real(Xk);
Imxk=imag(Xk);
Absxk=abs(Xk);
Anglexk=angle(Xk);

%display
figure();

subplot(2,2,1);
stem(k,Rexk);

subplot(2,2,2);
stem(k,Imxk);

subplot(2,2,3);
stem(k,Absxk);

subplot(2,2,4);
stem(k,Anglexk);