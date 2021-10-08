%%lab9_16
format compact
close all;
clear;
clc;

%Low Pass Filter alternate implementation (with w1, w2 and c parameters) 
%Filter grade
N=2;
M=2;

%generate w
w0=pi;
w=-w0:0.001:w0;
wp=w/pi;
w1=pi/2;
w2=pi/4;
c=0.8;

%generate bk and ak
bk=[1 -2*cos(w1) 1];
nbk=0:M;
ak=[1 -2*c*cos(w2) c*c];
nak=0:N;

%generate Hi(e^jw)
Y=DTFT(bk,nbk,w);
X=DTFT(ak,nak,w);
Xi=1./X;
[H,wH]=asignalmult(Y,w,Xi,w);

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