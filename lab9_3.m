%%lab9_3
format compact
close all;
clear;
clc;

%generate discrete time
n1=0;
n2=10;
n=n1:n2;

%generate x1, x2 and x
x11=rand(1,n2+1);
x1=2*x11;
x22=rand(1,n2+1);
x2=3*x22;
[x,nx]=signaladd(x1,n,x2,n);

%generate w
w1=0;
w2=2*pi;
w=w1:0.001:w2;
wp=w/pi;

%generate fouriers
X=DTFT(x,nx,w);
X1=DTFT(x1,n,w);
X2=DTFT(x2,n,w);
[Y,wY]=asignaladd(X1,w,X2,w);

ReX1=real(X1);
ImX1=imag(X1);
AbsX1=abs(X1);
AngleX1=angle(X1);

ReX2=real(X2);
ImX2=imag(X2);
AbsX2=abs(X2);
AngleX2=angle(X2);

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
title("X1");

subplot(2,2,1); 
plot(wp,ReX1);
title("rex1");

subplot(2,2,2); 
plot(wp,ImX1);
title("imx1");

subplot(2,2,3); 
plot(wp,AbsX1);
title("absx1");

subplot(2,2,4); 
plot(wp,AngleX1);
title("anglex1");

figure();
title("X2");

subplot(2,2,1); 
plot(wp,ReX2);
title("rex2");

subplot(2,2,2); 
plot(wp,ImX2);
title("imx2");

subplot(2,2,3); 
plot(wp,AbsX2);
title("absx2");

subplot(2,2,4); 
plot(wp,AngleX2);
title("anglex2");

figure();
title("X");

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
title("Y");

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

Z=X-Y;
difference=max(abs(Z));
disp(difference);