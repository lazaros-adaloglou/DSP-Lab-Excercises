%%lab3_3
format compact
close all;
clear;
clc;

%%a)
n1=0;
n2=10;

[x11,n11]=signalimp(1,n1,n2);
[x12,n12]=signalstep(1,n1,n2);
[x,nx]=signalmult(x11,n11,x12,n12);

figure();
stem(nx,x);
axis([(nx(1)-2) (nx(end)+2) (x(1)-2) (x(end)+2)]);
title("a)");

%%b)
n1=0;
n2=10;

[rex1,imx1,mx1,fx1,n1]=signaliexp(pi/2,n1,n2);
[rex2,imx2,mx2,fx2,n2]=signaliexp(pi/4,n1,n2);
[rex,nx]=signalmult(rex1,n1,rex2,n2);
[imx,~]=signalmult(imx1,n1,imx2,n2);
[mx,~]=signalmult(mx1,n1,mx2,n2);
[fx,~]=signalmult(fx1,n1,fx2,n2);

figure();
subplot(2,2,1);
stem(nx,rex);
axis([(nx(1)-2) (nx(end)+2) (min(rex)-2) (max(rex)+2)]);
title("b)rex");

subplot(2,2,2);
stem(nx,imx);
axis([(nx(1)-2) (nx(end)+2) (imx(1)-2) (imx(end)+2)]);
title("b)imx");

subplot(2,2,3);
stem(nx,mx);
axis([(nx(1)-2) (nx(end)+2) (mx(1)-2) (mx(end)+2)]);
title("b)mx");

subplot(2,2,4);
stem(nx,fx);
axis([(nx(1)-2) (nx(end)+2) (fx(1)-2) (fx(end)+2)]);
title("b)fx");

%%c)
n1=0;
n2=10;

[x11,n11]=signalimp(2,n1,n2);
[x12,n12]=signalstep(0,n1,n2);
[x13,n13]=signalstep(10,n1,n2);
y13=-x13;
[y1,ny1]=signaladd(x12,n12,y13,n13);
[x3,nx3]=signalmult(x11,n11,y1,ny1);

figure();
stem(nx3,x3);
axis([(nx3(1)-2) (nx3(end)+2) (x3(1)-2) (x3(end)+2)]);
title("c)");

%%d)
n1=0;
n2=25;

[x11,n11]=signalsin(1,2,0,n1,n2);
[x12,n12]=signalcos(1,2,pi,n1,n2);
[x13,n13]=signalstep(0,n1,n2);
[x14,n14]=signalstep(20,n1,n2);
[x112,nx112]=signaladd(x11,n11,x12,n12);
[x134,nx134]=signaladd(x13,n13,x14,n14);
[x4,nx4]=signalmult(x112,nx112,x134,nx134);

figure();
stem(nx4,x4);
axis([(nx4(1)-2) (nx4(end)+2) (min(x4)-2) (max(x4)+2)]);
title("d)");