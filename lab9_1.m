%%lab9_1
format compact
close all;
clear;
clc;

%generate w
w1=0;
w2=2*pi;
w=w1:0.001:w2;
wp=w/pi;
wd=w1:0.001:20;

%generate discrete time
n1=0;
n2=10000;
n=n1:n2;

%generate x
[x1,nx1]=signalrexp(1/3,0,n2);
[x2,nx2]=signalstep(0,0,n2);
[x,nx]=signalmult(x1,nx1,x2,nx2);

%generate fourier
X=1./(1-(1/3).*exp(-1i.*w));
ReX=real(X);
ImX=imag(X);
AbsX=abs(X);
AngleX=angle(X);
rexp=signalperiodic(ReX,wd)/1000;
imxp=signalperiodic(ImX,wd)/1000;
disp(rexp);
disp(imxp);

Y=DTFT(x,nx,w);
ReY=real(Y);
ImY=imag(Y);
AbsY=abs(Y);
AngleY=angle(Y);

%plotting
figure();

subplot(2,2,1); 
plot(wp,ReX);

subplot(2,2,2); 
plot(wp,ImX);

subplot(2,2,3); 
plot(wp,AbsX);

subplot(2,2,4); 
plot(wp,AngleX);

figure();

subplot(2,2,1); 
plot(wp,ReY);

subplot(2,2,2); 
plot(wp,ImY);

subplot(2,2,3); 
plot(wp,AbsY);

subplot(2,2,4); 
plot(wp,AngleY);

Z=X-Y;
difference=max(abs(Z));
disp(difference);