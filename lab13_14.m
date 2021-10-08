%%lab13_14
format compact
close all;
clear;
clc;

%generate discrete time
n1=0;
n2=16000;
n=n1:n2;
N=length(n);
k=n1:n2;

%generate x
x1=rand(1,16001);
x2=rand(1,16171);
x3=rand(1,16384);

%generate fft(x1)
t01=clock;
Xk1=fft(x1,16001);
t02=clock;
t1=etime(t02,t01);
Rexk1=real(Xk1);
Imxk1=imag(Xk1);
Absxk1=abs(Xk1);
Anglexk1=angle(Xk1);

%generate fft(x2)
t11=clock;
Xk2=fft(x2,16171);
t12=clock;
t2=etime(t12,t11);
Rexk2=real(Xk2);
Imxk2=imag(Xk2);
Absxk2=abs(Xk2);
Anglexk2=angle(Xk2);

%generate fft(x3)
t21=clock;
Xk3=fft(x3,16384);
t22=clock;
t3=etime(t22,t21);
Rexk3=real(Xk3);
Imxk3=imag(Xk3);
Absxk3=abs(Xk3);
Anglexk3=angle(Xk3);
t1
t2
t3