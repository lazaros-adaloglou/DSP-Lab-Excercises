%%CTFTdemo
format compact
close all;
clear;
clc;

Rex1=real(x1);
Rex2=real(x2);
Rex3=real(x3);
Rex4=real(x4);

Imx1=imag(x1);
Imx2=imag(x2);
Imx3=imag(x3);
Imx4=imag(x4);

Absx1=abs(x1);
Absx2=abs(x2);
Absx3=abs(x3);
Absx4=abs(x4);

Anglex1=angle(x1);
Anglex2=angle(x2);
Anglex3=angle(x3);
Anglex4=angle(x4);

%plots
figure();

subplot(2,2,1);
plot(wp,Rex1);

subplot(2,2,2);
plot(wp,Imx1);

subplot(2,2,3);
plot(wp,Absx1);

subplot(2,2,4);
plot(wp,Anglex1);

figure();

subplot(2,2,1);
plot(wp,Rex2);

subplot(2,2,2);
plot(wp,Imx2);

subplot(2,2,3);
plot(wp,Absx2);

subplot(2,2,4);
plot(wp,Anglex2);

figure();

subplot(2,2,1);
plot(wp,Rex3);

subplot(2,2,2);
plot(wp,Imx3);

subplot(2,2,3);
plot(wp,Absx3);

subplot(2,2,4);
plot(wp,Anglex3);

figure();

subplot(2,2,1);
plot(wp,Rex4);

subplot(2,2,2);
plot(wp,Imx4);

subplot(2,2,3);
plot(wp,Absx4);

subplot(2,2,4);
plot(wp,Anglex4);