%%lab11_5
format compact
close all;
clear;
clc;

%generate time domain
t1=0;
t2=30;
t=t1:t2;

%generate w
wk=10*pi;
w=-wk:0.001:wk;
wp=w/pi;
w0=2;

%generate H(w)
H=1-3*1i.*w;

ReH=real(H);
ImH=imag(H);
AbsH=abs(H);
AngleH=angle(H);

%inputs and outputs
[Rex,Imx,Absx,Anglex,tx]=asignaliexp(w0,t1,t2);
[Rey1,Imy1,Absy1,Angley1,ty]=asignaliexp(w0,t1,t2);
Rey=Rey1+6*Imy1;
Imy=Imy1-6*Rey1;
Absy=sqrt(Rey.*Rey+Imy.*Imy);
Angley=atan(Imy./Rey);

%plot
figure();

subplot(2,2,1);
plot(wp,ReH);

subplot(2,2,2);
plot(wp,ImH);

subplot(2,2,3);
plot(wp,AbsH);

subplot(2,2,4);
plot(wp,AngleH);

figure();

subplot(2,2,1);
plot(tx,Rex);

subplot(2,2,2);
plot(tx,Imx);

subplot(2,2,3);
plot(tx,Absx);

subplot(2,2,4);
plot(tx,Anglex);

figure();

subplot(2,2,1);
plot(ty,Rey);

subplot(2,2,2);
plot(ty,Imy);

subplot(2,2,3);
plot(ty,Absy);

subplot(2,2,4);
plot(ty,Angley);