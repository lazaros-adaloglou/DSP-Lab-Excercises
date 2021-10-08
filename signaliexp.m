function [rex,imx,mx,fx,n]=signaliexp(w,n1,n2)
% discrete imaginary exp signal
% exp(jwn)=cos(wn)+jsin(wn) n=n1..n2
n=n1:n2;
if n1<=n2
rex=cos(w*n);
imx=sin(w*n);
mx=1.^n;
fx=w*n;
%stem(n,x);
else
disp('n1 must be the same or smaller than n2');
%stem(n,x);
end
end