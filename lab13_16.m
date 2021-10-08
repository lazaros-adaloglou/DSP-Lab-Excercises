%%lab13_16
format compact
close all;
clear;
clc;

%generate discrete time
L=21;
n1=0;
n2=L-1;
n=n1:n2;
N=2^10;

%generate hann
h1=0.5-0.5.*cos(2*pi.*n./L);

%generate hamm
h2=0.54-0.46.*cos(2*pi.*n./L);

%generate hann fft
H1=fft(h1,N);
AbsH1=abs(H1);

%generate hamm fft
H2=fft(h2,N);
AbsH2=abs(H2);

%display
figure();

subplot(2,2,1);
stem(n,h1);

subplot(2,2,2);
stem(n,h2);

subplot(2,2,3);
plot(1:N,AbsH1);

subplot(2,2,4);
plot(1:N,AbsH2);

%generate discrete time
L=31;
n1=0;
n2=L-1;
n=n1:n2;
N=2^10;

%generate hann
h1=0.5-0.5.*cos(2*pi.*n./L);

%generate hamm
h2=0.54-0.46.*cos(2*pi.*n./L);

%generate hann fft
H1=fft(h1,N);
AbsH1=abs(H1);

%generate hamm fft
H2=fft(h2,N);
AbsH2=abs(H2);

%display
figure();

subplot(2,2,1);
stem(n,h1);

subplot(2,2,2);
stem(n,h2);

subplot(2,2,3);
plot(1:N,AbsH1);

subplot(2,2,4);
plot(1:N,AbsH2);