%%lab 1.1.17

format compact
close all;
clear;
clc;

%% Analog Time Periodic Signal

t1=0;
t2=5;
t=t1:0.001:t2;
A=1;
W=10*pi;
F=W/(2*pi);
PH=0;
Tmin=(2*pi)/W;
Fmax=1/Tmin;
xa=A*cos(W*t+PH);
subplot(2,2,1);
plot(t,xa);
title('xa');

%% Periodic Sampling

n1=0;
n2=5;
n=n1:n2;
fs=3;
Ts=1/fs;
xn=cos(W*(n.*Ts)+PH);
subplot(2,2,2);
stem(n,xn);
title('xn-fs=3Hz');

fss=2*Fmax;
Tss=1/fss;
xns=cos(W*(n.*Tss)+PH);
subplot(2,2,3);
stem(n,xns);
title('xn-fs=2*Fmax');

disp('The sampling theorem is not applied, because fs=3Hz<2*Fmax= ');
disp(2*Fmax);

%% Recreation

N=2;
t1n=(n1-N)*Ts;
t2n=(n2+N)*Ts;
tn=t1n:0.001:t2n;
xr=zeros(1,length(tn));
for i=1:length(tn)
    body=zeros(1,length(n));
    for j=n1+1:1:n2+1
body(j)=cos(W*(j*Ts)+PH)*sinc(tn(i)*fs-j);

    end
xr(i)=sum(body);
    
end
subplot(2,2,4);
plot(tn,xr);
title('xr-a-from-n');
