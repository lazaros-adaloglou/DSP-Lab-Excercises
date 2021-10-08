%%lab9_7
format compact
close all;
clear;
clc;

%generate discrete time
n1=0;
n2=100;
n=n1:n2;

%generate x and y
x1=rand(1,n2+1);
x2=rand(1,n2+1);
[y,ny]=signalconv(x1,n,x2,n);

%generate w
w1=-pi;
w2=pi;
w=w1:0.001:w2;
wp=w/pi;

%generate fouriers
X1=DTFT(x1,n,w);
X2=DTFT(x2,n,w);
[X,wX]=asignalmult(X1,w,X2,w);
Y=DTFT(y,ny,w);

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

K=X-Y;
difference=max(abs(K));
disp(difference);