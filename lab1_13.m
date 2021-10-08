%lab 1.1.13
format compact
close all;
clear;
clc;

[x,n]=signalrexp(0.9,0,10);

[xe,xo,m] = signalevenodd(x,n);

y=xe.*xo;

subplot(2,2,1);
stem(m,xe);
title('xe');

subplot(2,2,2);
stem(m,xo);
title('xo');

subplot(2,2,3);
stem(m,x);
title('x');

subplot(2,2,4);
stem(m,y);
title('y');
