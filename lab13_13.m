%%lab13_13
format compact
close all;
clear;
clc;

%generate discrete time
n1=0;
n2=99;
n=n1:n2;
N=length(n);
k=n1:n2;

%generate x
x=rand(1,N);

%generate fft(x)
Xk=fft(x,N);
Rexk=real(Xk);
Imxk=imag(Xk);
Absxk=abs(Xk);
Anglexk=angle(Xk);

%generate signaldft(x)
Xki=signaldft(x,N);
Rexki=real(Xki);
Imxki=imag(Xki);
Absxki=abs(Xki);
Anglexki=angle(Xki);

%display
figure();

subplot(2,2,1);
stem(k,Rexk);

subplot(2,2,2);
stem(k,Imxk);

subplot(2,2,3);
stem(k,Absxk);

subplot(2,2,4);
stem(k,Anglexk);

figure();

subplot(2,2,1);
stem(k,Rexki);

subplot(2,2,2);
stem(k,Imxki);

subplot(2,2,3);
stem(k,Absxki);

subplot(2,2,4);
stem(k,Anglexki);

Z=Xk-Xki;
diff=max(abs(Z));
disp(diff);