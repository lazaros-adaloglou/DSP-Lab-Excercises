%DTFT Demo
format compact
close all;
clear;
clc;

%generate discrete time
n1=0;
n2=10;
n=n1:n2;

%generate angular frequency w domain
w1=0;
w2=2*pi;
w=w1:0.001:w2;
wp=w/pi;

%generate x
[x1,nx1]=signalrexp(1/3,n1,n2);
[x2,nx2]=signalstep(0,n1,n2);
[x,nx]=signalmult(x1,nx1,x2,nx2);

%generate Fourier signal X calculated on hand
X=1./(1-(1/3).*exp(-1i.*w));
ReX=real(X);
ImX=imag(X);
AbsX=abs(X);
AngleX=angle(X);

%generate Fourier signal X calculated with DTFT function
Xd=DTFT(x,nx,w);
ReXd=real(Xd);
ImXd=imag(Xd);
AbsXd=abs(Xd);
AngleXd=angle(Xd);

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
plot(wp,ReXd);

subplot(2,2,2); 
plot(wp,ImXd);

subplot(2,2,3); 
plot(wp,AbsXd);

subplot(2,2,4); 
plot(wp,AngleXd);

Z=X-Xd;
difference=max(abs(Z));
disp(difference);