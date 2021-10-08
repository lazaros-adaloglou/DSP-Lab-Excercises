function [rex,imx,mx,fx,n]=signalcexp(r,w,n1,n2)
% discrete complex exp signal
% r^n*exp(jwn)=(r^n)*{cos(wn)+jsin(wn)} n=n1..n2
n=n1:n2;
if n1<=n2
mx=r.^n;
fx=w*n;
imx=mx.*sin(w*n);
rex=mx.*cos(w*n);
%stem(n,x);
else
disp('n1 must be the same or smaller than n2');
%stem(n,x);
end
end