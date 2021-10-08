%%lab11_4
format compact
close all;
clear;
clc;

%generate w
w0=10*pi;
w=-w0:0.001:w0;
wp=w/pi;

%generate fouriers
X=1./(4+1i.*w);

ReX=real(X);
ImX=imag(X);
AbsX=abs(X);
AngleX=angle(X);

%plot
figure();

subplot(2,2,1);
plot(wp,ReX);

subplot(2,2,2);
plot(wp,ImX);

subplot(2,2,3);
plot(wp,AbsX);

subplot(2,2,4);
plot(wp,AngleX);