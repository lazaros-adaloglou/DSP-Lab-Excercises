%%lab9_9
format compact
close all;
clear;
clc;

%generate discrete time
n1=0;
n2=100;
n=n1:n2;

%generate w
wc=pi/2;
wh=-wc:0.001:wc;
whp=wh/pi;

w0=pi;
w=-w0:0.001:w0;
wp=w/pi;

%generate H(e^jw)
[h1,th1]=asignalstep(-wc,-w0,w0);
[h2,th2]=asignalstep(wc,-w0,w0);
h3=-h2;
[H,tH]=asignaladd(h1,th1,h3,th2);
AbsH=abs(H);

%generate x
[x1,nx1]=signalrexp(1/3,n1,n2);
x2=4.*x1;
[x3,nx3]=signalstep(0,n1,n2);
[x,nx]=signalmult(x2,nx1,x3,nx3);

%generate fouriers
X=DTFT(x,nx,w);
[Y,wY]=asignalmult(X,w,H,tH);

ReX=real(X);
ImX=imag(X);
AbsX=abs(X);
AngleX=angle(X);

ReY=real(Y);
ImY=imag(Y);
AbsY=abs(Y);
AngleY=angle(Y);

%plotting
figure();
plot(wp,AbsH);
title("AbsH");

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