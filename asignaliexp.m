function [rex,imx,mx,fx,t]=asignaliexp(w,t1,t2)
% continuous imaginary exp signal
% exp(jwt)=cos(wt)+jsin(wt) t=t1..t2
t=t1:0.001:t2;
if t1<=t2
rex=cos(w*t);
imx=sin(w*t);
mx=1.^t;
fx=w*t;
else
disp('n1 must be the same or smaller than n2');
end
end