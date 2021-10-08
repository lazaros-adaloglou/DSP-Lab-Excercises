%%lab9_13
format compact
close all;
clear;
clc;

%generate discrete time
n1=0;
n2=1;
n=n1:n2;

%generate w
w0=pi;
w=-w0:0.001:w0;
wp=w/pi;

%generate h
[h1,nh1]=signalimp(0,n1,n2);
[h22,nh2]=signalimp(1,n1,n2);
h2=-3*h22;
[h,hx]=signaladd(h1,nh1,h2,nh2);

%generate H(e^jw)
H=DTFT(h,n,w);

ReH=real(H);
ImH=imag(H);
AbsH=abs(H);
AngleH=angle(H);

%plotting
figure();

subplot(2,2,1); 
plot(wp,ReH);
title("reH");

subplot(2,2,2); 
plot(wp,ImH);
title("imH");

subplot(2,2,3); 
plot(wp,AbsH);
title("absH");

subplot(2,2,4); 
plot(wp,AngleH);
title("angleH");