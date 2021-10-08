%%lab13_10
format compact
close all;
clear;
clc;

%generate discrete time
n1=0;
n2=5;
n=n1:n2;
N=length(n);
k=n1:n2;

%generate x
x=n+2;

%generate signaldft(x)
Xk=fft(x,N);
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