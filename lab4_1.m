%%lab4_1
format compact
close all;
clear;
clc;

%%plots trig(n) as d(n)
n1=0;
n2=10;
n3=0;
n4=20;
n12=n1:n2;
n34=n3:n4;
n=n1:n4;

for i=1:length(n12)
x1(i)=n12(i)+2;
end

for i=1:length(n34)
x2(i)=n34(i)+5;
end

y=conv(x1,x2)

[z,nz]=signalconv(x1,n12,x2,n34);

figure();
stem(nz,z);
axis([(nz(1)-2) (nz(end)+2) (min(z)-2) (max(z)+2)]);
title("z=signalconv(x1,n12,x2,n34)");
