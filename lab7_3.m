%%lab7_3
format compact
close all;
clear;
clc;

N=2;
M=1;
disp("(N,M)=");
disp(N);
disp(",");
disp(M);
disp("So, Filter Grade=");
disp(N);
disp(",");
disp(M);
disp("The constant coefficients are: bk=");
b0=1;
b1=1;
bk=[b0 b1];
a0=1;
a1=1;
a2=1;
ak=[a0 a1 a2];
disp(bk);
disp("and: ak=");
disp(ak);
n1=0;
n2=10;
n=n1:n2;
[xh,nxh]=signalimp(0,n1,n2);
[xs,nxs]=signalstep(0,n1,n2);
y1=n;
[y2,ny2]=signalstep(0,n1,n2);
[y,ny]=signalmult(y1,n,y2,ny2);
h=filter(bk,ak,xh);
s=filter(bk,ak,xs);
y=filter(bk,ak,y);

figure();
subplot(3,1,1);
stem(n,h);

subplot(3,1,2);
stem(n,s);

subplot(3,1,3);
stem(n,y);