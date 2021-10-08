%%lab9_15
format compact
close all;
clear;
clc;

%generate discrete time
n1=0;
n2=100;
n=n1:n2;

%generate w
w0=pi;
w=-w0:0.001:w0;
wp=w/pi;

%generate hs
[h0,nh0]=signalstep(0,n1,n2);

[h11,nh11]=signalrexp(1/2,n1,n2);
[h1,nh1]=signalmult(h11,nh11,h0,nh0);

[h22,nh22]=signalrexp(1/3,n1,n2);
[h2,nh2]=signalmult(h22,nh22,h0,nh0);

[h33,nh33]=signalrexp(1/4,n1,n2);
[h3,nh3]=signalmult(h33,nh33,h0,nh0);

%generate Hi(e^jw)
H1=DTFT(h1,nh1,w);
H2=DTFT(h2,nh2,w);
H3=DTFT(h3,nh3,w);
[H12,wH12]=asignalmult(H1,w,H2,w);
[H,wH]=asignaladd(H12,wH12,H3,w);

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