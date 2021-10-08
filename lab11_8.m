%%lab11_8
format compact
close all;
clear;
clc;

%generate time domain
t1=0;
t2=30;
t=t1:t2;

%generate step
[xs,txs]=asignalstep(0,t1,t2);

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

two=2*ones(1,length(t));
%inputs and outputs
[x1,tx1]=asignalcos(2,w0,pi/4,t1,t2);
[rex22,imx2,mx2,fx2,tx2]=asignaliexp(2,t1,t2);
[x4,tx4]=asignalmult(rex22,tx2,imx2,tx2);
x5=4*x4;
[x,tx]=asignaladd(x1,tx1,x5,tx4);
Rex=real(x);
Imx=imag(x);
Absx=abs(x);
Anglex=angle(x);

y=(1-6*1i).*x;
Rey=real(y);
Imy=imag(y);
Absy=abs(y);
Angley=angle(y);

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
plot(tx,Rey);

subplot(2,2,2);
plot(tx,Imy);

subplot(2,2,3);
plot(tx,Absy);

subplot(2,2,4);
plot(tx,Angley);