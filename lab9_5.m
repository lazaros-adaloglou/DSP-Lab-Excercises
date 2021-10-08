%%lab9_5
format compact
close all;
clear;
clc;

%generate discrete time
n1=0;
n2=10;
n=n1:n2;

%generate x and y
x=rand(1,n2+1);
[y,ny]=signalfold(x,n);

%generate w
w1=0;
w2=2*pi;
w=w1:0.001:w2;
wp=w/pi;

%generate fouriers
X=DTFT(x,n,w);
Y=DTFT(y,ny,w);
Z=DTFT(x,n,-w);

ReX=real(X);
ImX=imag(X);
AbsX=abs(X);
AngleX=angle(X);

ReY=real(Y);
ImY=imag(Y);
AbsY=abs(Y);
AngleY=angle(Y);

ReZ=real(Z);
ImZ=imag(Z);
AbsZ=abs(Z);
AngleZ=angle(Z);

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
plot(-wp,ReZ);
title("rez");

subplot(2,2,2); 
plot(-wp,ImZ);
title("imz");

subplot(2,2,3); 
plot(-wp,AbsZ);
title("absz");

subplot(2,2,4); 
plot(-wp,AngleZ);
title("anglez");

K=Z-Y;
difference=max(abs(K));
disp(difference);