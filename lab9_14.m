%%lab9_14
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

%equation of differences coefficients
bk=[1 0 1];
nbk=0:2;
ak=[1 -1/3];
nak=0:1;

%generate x
[x1,nx1]=signalrexp(1/3,n1,n2);
[x3,nx3]=signalstep(0,n1,n2);
[x,nx]=signalmult(x1,nx1,x3,nx3);

%generate H(e^jw)
Y=DTFT(bk,nbk,w);
X=DTFT(ak,nak,w);
Xi=1./X;
[H,wH]=asignalmult(Y,w,Xi,w);

ReX=real(X);
ImX=imag(X);
AbsX=abs(X);
AngleX=angle(X);

ReY=real(Y);
ImY=imag(Y);
AbsY=abs(Y);
AngleY=angle(Y);

ReH=real(H);
ImH=imag(H);
AbsH=abs(H);
AngleH=angle(H);

%plotting
figure();

subplot(2,2,1); 
plot(wp,ReX);
title("rex");

subplot(2,2,2); 
plot(wp,ImX);
title("imx");

subplot(2,2,3); 
plot(wp,AbsX);
title("absx");

subplot(2,2,4); 
plot(wp,AngleX);
title("anglex");

figure();

subplot(2,2,1); 
plot(wp,ReY);
title("rey");

subplot(2,2,2); 
plot(wp,ImY);
title("imy");

subplot(2,2,3); 
plot(wp,AbsY);
title("absy");

subplot(2,2,4); 
plot(wp,AngleY);
title("angley");

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