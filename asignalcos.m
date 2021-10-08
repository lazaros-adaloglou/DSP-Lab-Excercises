function [x,t]=asignalcos(a,w,ph,t1,t2)
% analog sinusoidal signal
% x(t)=a*sin(w*t+ph) t=t1..t2
if t1<=t2
t=t1:0.001:t2;
x=a*cos(w.*t+ph);
else
disp('t1 must be the same or smaller than t2');
t=t1:0.001:t2;
x=0;
end