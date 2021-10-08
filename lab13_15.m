%%lab13_15
format compact
close all;
clear;
clc;

%generate fft(x1)
for i=1:2^10
x1=rand(1,i);
t01=clock;
Xk=fft(x1,i);
t02=clock;
t(i)=etime(t02,t01);
end

%display
figure();

subplot(2,2,1);
plot(1:length(t),t);