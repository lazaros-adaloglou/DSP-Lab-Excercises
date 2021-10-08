function [rex,imx,mx,fx,t]=asignalcexp(r,w,t1,t2)
% complex exp signal
% r^t*exp(jwt)=(r^t)*{cos(wt)+jsin(wt)} t=t1..t2
t=t1:0.001:t2;
if t1<=t2
mx=r.^t;
fx=w*t;
imx=mx.*sin(w*t);
rex=mx.*cos(w*t);
else
disp('t1 must be the same or smaller than t2');
end
end