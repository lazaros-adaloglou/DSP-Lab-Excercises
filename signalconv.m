function [x,nx]=signalconv(x1,nx1,x2,nx2)
% linear convolution
% x(n)=x1(n)*x2(n)
nyb=nx1(1)+nx2(1);
nye=nx1(length(x1))+nx2(length(x2));
nx=nyb:nye;
x=conv(x1,x2);
end