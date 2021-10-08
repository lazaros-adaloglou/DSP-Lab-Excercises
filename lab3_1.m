%%lab3_1
format compact
close all;
clear;
clc;

%%a)
n1=0;
n2=3;

[x11,n11]=signalimp(0,n1,n2);
[x12,n12]=signalimp(1,n1,n2);
[x13,n13]=signalimp(3,n1,n2);
[y1,ny1]=signaladd(x11,n11,x12,n12);
[x1,nx1]=signaladd(x13,n13,y1,ny1);

figure();
stem(nx1,x1);
axis([(nx1(1)-2) (nx1(end)+2) (x1(1)-2) (x1(end)+2)]);
title("a)");

%%b)
n1=0;
n2=3;

[x11,n11]=signalstep(0,n1,n2);
[x12,n12]=signalstep(1,n1,n2);
[x13,n13]=signalstep(3,n1,n2);
[y1,ny1]=signaladd(x11,n11,x12,n12);
[x1,nx1]=signaladd(x13,n13,y1,ny1);

figure();
stem(nx1,x1);
axis([(nx1(1)-2) (nx1(end)+2) (x1(1)-2) (x1(end)+2)]);
title("b)");

%%c)
n1=0;
n2=10;

[x11,n11]=signalstep(0,n1,n2);
[x12,n12]=signalramp(0,n1,n2);
[x1,nx1]=signaladd(x11,n11,x12,n12);

figure();
stem(nx1,x1);
axis([(nx1(1)-2) (nx1(end)+2) (x1(1)-2) (x1(end)+2)]);
title("c)");

%%d)
n1=0;
n2=10;

[rex1,imx1,mx1,fx1,n1]=signaliexp(pi/2,n1,n2);
[rex2,imx2,mx2,fx2,n2]=signaliexp(pi/4,n1,n2);
[rex,nx]=signaladd(rex1,n1,rex2,n2);
[imx,~]=signaladd(imx1,n1,imx2,n2);
[mx,~]=signaladd(mx1,n1,mx2,n2);
[fx,~]=signaladd(fx1,n1,fx2,n2);

figure();
subplot(2,2,1);
stem(nx,rex);
axis([(nx(1)-2) (nx(end)+2) (min(rex)-2) (max(rex)+2)]);
title("d)rex");

subplot(2,2,2);
stem(nx,imx);
axis([(nx(1)-2) (nx(end)+2) (imx(1)-2) (imx(end)+2)]);
title("d)imx");

subplot(2,2,3);
stem(nx,mx);
axis([(nx(1)-2) (nx(end)+2) (mx(1)-2) (mx(end)+2)]);
title("d)mx");

subplot(2,2,4);
stem(nx,fx);
axis([(nx(1)-2) (nx(end)+2) (fx(1)-2) (fx(end)+2)]);
title("d)fx");