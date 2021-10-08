%%lab9_2
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