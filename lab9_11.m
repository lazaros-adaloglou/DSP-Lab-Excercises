%%lab9_11
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
w1=pi/3;
w2=2*pi/3;

%generate H(e^jw)
[h0,th0]=asignalstep(-w2,-w0,w0);
[h11,th1]=asignalstep(-w1,-w0,w0);
h1=-h11;
[H1,tH1]=asignaladd(h0,th0,h1,th1);

[h2,th2]=asignalstep(w1,-w0,w0);
[h33,th3]=asignalstep(w2,-w0,w0);
h3=-h33;
[H2,tH2]=asignaladd(h2,th2,h3,th3);

[H,tH]=asignaladd(H1,tH1,H2,tH2);
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